using Newtonsoft.Json.Serialization;
using System.Configuration;
using System.Web.Http;
using System.Web.Http.Cors;

namespace KPMG.Test.Web
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API routes
            config.MapHttpAttributeRoutes();

            EnableCors(config);
        }

        private static void EnableCors(HttpConfiguration config)
        {
            var origins = ConfigurationManager.AppSettings["CorsOrigins"];
            if (!string.IsNullOrWhiteSpace(origins))
            {
                var cors = new EnableCorsAttribute(origins, "*", "*");
                config.EnableCors();
            }
        }
    }
}
