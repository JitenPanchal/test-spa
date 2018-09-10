using KPMG.Test.Web.Infrastructure.Filters;
using KPMG.Test.Web.Infrastructure.Handlers;
using System.Web.Http;
using System.Web.Http.ExceptionHandling;

namespace KPMG.Test.Web
{
    public class ApiFilterConfig
    {
        public static void RegisterGlobalFilters(HttpConfiguration config)
        {
            config.MessageHandlers.Add(new MessageHandler());
            config.Filters.Add(new ApiAuthorizeUserAttribute());
            config.Filters.Add(new RequestModelValidationAttribute());
            config.Services.Replace(typeof(IExceptionHandler), new ApiExceptionHandler());
        }
    }
}