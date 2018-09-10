using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using System.Web;
using System.Web.Http;

namespace KPMG.Test.Web
{
    public class JsonConfig
    {
        public static void Configure()
        {
            var jsonSerializerSettings = new JsonSerializerSettings
            {
                Formatting = Formatting.None,
                TypeNameHandling = TypeNameHandling.None,
                ContractResolver = new CamelCasePropertyNamesContractResolver()
            };

            if (HttpContext.Current.IsDebuggingEnabled)
                jsonSerializerSettings.Formatting = Formatting.Indented;

            GlobalConfiguration.Configuration.Formatters.JsonFormatter.SerializerSettings = jsonSerializerSettings;
            GlobalConfiguration.Configuration.Formatters.Remove(GlobalConfiguration.Configuration.Formatters.XmlFormatter);
        }
    }
}