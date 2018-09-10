using KPMG.Test.Core.Database;
using KPMG.Test.Core.Exceptions;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.ExceptionHandling;


namespace KPMG.Test.Web.Infrastructure.Handlers
{
    public class ApiExceptionHandler : ExceptionHandler
    {
        private IDbContext dbContext;

        public override void Handle(ExceptionHandlerContext context)
        {
            InitServices(context);

            var errorInfo = new ErrorInfo();

            HttpStatusCode httpStatusCode;

            if (context.Exception is DbEntityValidationException)
            {
                httpStatusCode = HttpStatusCode.BadRequest;
                errorInfo.ValidationErrorMessages = (context.Exception as DbEntityValidationException).GetAllErrorMessages();
            }
            else if (context.Exception is EntityNotFoundException)
            {
                httpStatusCode = HttpStatusCode.NotFound;
                errorInfo.ErrorMessages = new List<string>() { (context.Exception as EntityNotFoundException).Message };
            }
            else
            {
                httpStatusCode = HttpStatusCode.InternalServerError;

                errorInfo.ErrorMessages = new List<string>() { "An unhandled error occured." };

                // TODO Log Error to Database
            }

            context.Result = new ApiErrorResult(context, errorInfo, httpStatusCode);
        }

        public override Task HandleAsync(ExceptionHandlerContext context, CancellationToken cancellationToken)
        {
            var task = base.HandleAsync(context, cancellationToken);

            return task.ContinueWith((t) =>
            {
                Handle(context);
            });
        }

        #region Helpers

        private void InitServices(ExceptionHandlerContext context)
        {
            var requestScope = context.Request.GetDependencyScope();

            dbContext = dbContext ?? requestScope.GetService(typeof(IDbContext)) as IDbContext;
        }

        private static Dictionary<string, IList<string>> GetAllErrorMessages(DbEntityValidationException dbEntityValidationException)
        {
            var data = new Dictionary<string, IList<string>>();

            foreach (var item in dbEntityValidationException.EntityValidationErrors.SelectMany(x => x.ValidationErrors))
            {
                data.Add(item.PropertyName, new List<string>() { item.ErrorMessage });
            }

            return data;
        }

        #endregion

        #region ErrorInfo

        private class ErrorInfo
        {
            public IList<string> ErrorMessages { get; set; }

            public IDictionary<string, IList<string>> ValidationErrorMessages { get; set; }
        }

        #endregion

        #region ApiErrorResult

        private class ApiErrorResult : IHttpActionResult
        {
            private readonly ExceptionHandlerContext exceptionHandlerContext;
            private readonly ErrorInfo errorInfo;
            private readonly HttpStatusCode httpStatusCode;

            public ApiErrorResult(ExceptionHandlerContext exceptionHandlerContext, 
                ErrorInfo errorInfo, 
                HttpStatusCode httpStatusCode)
            {
                this.exceptionHandlerContext = exceptionHandlerContext;
                this.errorInfo = errorInfo;
                this.httpStatusCode = httpStatusCode;
            }

            public Task<HttpResponseMessage> ExecuteAsync(CancellationToken cancellationToken)
            {
                var response = exceptionHandlerContext.Request.CreateResponse(httpStatusCode, errorInfo);
                return Task.FromResult(response);
            }
        }

        #endregion
    }
}