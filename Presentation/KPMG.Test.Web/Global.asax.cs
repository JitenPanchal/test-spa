using System.Configuration;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Linq;
using System.Reflection;
using System.Web.Compilation;

namespace KPMG.Test.Web
{
    public class MvcApplication : HttpApplication
    {
        protected void Application_Start()
        {
            BuildManager.GetReferencedAssemblies().Cast<Assembly>();
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            ApiFilterConfig.RegisterGlobalFilters(GlobalConfiguration.Configuration);
            AutofacConfig.Configure(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            JsonConfig.Configure();
        }
    }
}