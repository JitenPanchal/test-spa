using System.Net;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;
using System.Net.Http;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Http.ModelBinding;

namespace KPMG.Test.Web.Infrastructure.Filters
{
    public class RequestModelValidationAttribute : ActionFilterAttribute
    {
        public override Task OnActionExecutingAsync(HttpActionContext actionContext, CancellationToken cancellationToken)
        {
            var task = base.OnActionExecutingAsync(actionContext, cancellationToken);

            return task.ContinueWith((t) =>
            {
                OnActionExecuting(actionContext);
            });
        }

        public override void OnActionExecuting(HttpActionContext actionContext)
        {
            if (actionContext.ModelState.IsValid == false)
            {
                var apiErrorResult = new ApiErrorResult()
                {
                    ValidationErrorMessages = actionContext.ModelState.GetAllErrorMessages()
                };

                actionContext.Response = actionContext.Request.CreateResponse(HttpStatusCode.BadRequest, apiErrorResult);
            }
            else
                base.OnActionExecuting(actionContext);
        }

        #region ErrorInfo

        private class ApiErrorResult
        {
            public IDictionary<string, IList<string>> ValidationErrorMessages { get; set; } 
        }

        #endregion
    }
}