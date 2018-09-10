
using System;
using System.Diagnostics;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Net;
using System.Text;
using System.Web;
using KPMG.Test.Core.Database;
using System.Web.Hosting;

namespace KPMG.Test.Web.Infrastructure.Handlers
{
    /// <summary>
    /// Validates Https require in release mode 
    /// Logs time for the request
    /// </summary>
    public class MessageHandler : DelegatingHandler
    {
        private const string format = @"Url: {0}{1}ElapsedMilliseconds: {2}";

        private IDbContext dbContext;

        private readonly int httpsPort;

        public MessageHandler()
            : this(443)
        {
        }

        public MessageHandler(int httpsPort)
        {
            this.httpsPort = httpsPort;
        }

        protected override async Task<HttpResponseMessage> SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
        {
            var stopWatch = new Stopwatch();
            stopWatch.Start();

            InitServices(request);

            HttpResponseMessage response;

            // Validate for https - debug="false" in web.config - Disabled feature for now
            /*
            if (HostingEnvironment.IsHosted && !HttpContext.Current.IsDebuggingEnabled && request.RequestUri.Scheme != Uri.UriSchemeHttps)
            {
                var tcs = CreateHttpResponseMessage(request);
                return await tcs.Task;
            }
            */

            try
            {
                response = await base.SendAsync(request, cancellationToken);
            }
            finally
            {

                stopWatch.Stop();

                long elapsedMilliseconds = stopWatch.ElapsedMilliseconds;
                var url = request.RequestUri.ToString();

                //Debug.WriteLine(string.Format(format, url, Environment.NewLine, elapsedMilliseconds));

                /* 
                TODO
                    1. Log to database. Url,response, elapsedMilliseconds, userid etc. Log this insert to db in background task.
                    2. Set User's last login activity
                    3. Save all changes to database
                */
            }

            return response;
        }

        #region Helpers

        private void InitServices(HttpRequestMessage request)
        {
            var requestScope = request.GetDependencyScope();

            dbContext = dbContext ?? requestScope.GetService(typeof(IDbContext)) as IDbContext;
        }

        private TaskCompletionSource<HttpResponseMessage> CreateHttpResponseMessage(HttpRequestMessage request)
        {
            HttpResponseMessage response;
            var uri = new UriBuilder(request.RequestUri);
            uri.Scheme = Uri.UriSchemeHttps;
            uri.Port = httpsPort;

            var content = string.Format("<p>Https is required</p></br><p>The resource can be found at <a href=\"{0}\">{0}</a>.</p>", uri.Uri.AbsoluteUri);

            if (request.Method.Equals(HttpMethod.Get))
            {
                response = request.CreateResponse(HttpStatusCode.Found);
                response.Headers.Location = uri.Uri;
                response.Content = new StringContent(content, Encoding.UTF8, "text/html");
            }
            else
            {
                response = request.CreateResponse(HttpStatusCode.NotFound);
                response.Content = new StringContent(content, Encoding.UTF8, "text/html");
            }

            var tcs = new TaskCompletionSource<HttpResponseMessage>();
            tcs.SetResult(response);
            return tcs;
        }

        #endregion
    }
}