using Autofac;
using Autofac.Integration.WebApi;
using System.Web.Http;

namespace KPMG.Test.Web.Infrastructure.Modules
{
    public class WebApiModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            // Register your Web API controllers.
            builder.RegisterApiControllers(System.Reflection.Assembly.GetExecutingAssembly());

            // OPTIONAL: Register the Autofac filter provider.
            builder.RegisterWebApiFilterProvider(GlobalConfiguration.Configuration);

            // OPTIONAL: Register the Autofac model binder provider.
            builder.RegisterWebApiModelBinderProvider();
        }
    }
}