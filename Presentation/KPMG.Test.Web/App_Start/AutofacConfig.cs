using Autofac;
using Autofac.Integration.WebApi;
using KPMG.Test.Web.Infrastructure.Modules;
using System.Web.Http;
using System.Web.Http.Dependencies;

namespace KPMG.Test.Web
{
    public class AutofacConfig
    {
        public static void Configure(string connectionString)
        {
            var builder = new ContainerBuilder();

            builder.RegisterModule(new DbContextModule(connectionString));
            builder.RegisterModule(new MapperModule());
            builder.RegisterModule(new ServicesModule());
            builder.RegisterModule(new WebApiModule());

            // Set the dependency resolver to be Autofac.
            var container = builder.Build();

            GlobalConfiguration.Configuration.DependencyResolver = new AutofacWebApiDependencyResolver(container);

            GlobalConfiguration.Configuration.EnsureInitialized();
        }

        public static IDependencyResolver GetDependencyResolver(string connectionString)
        {
            var builder = new ContainerBuilder();

            builder.RegisterModule(new DbContextModule(connectionString));
            builder.RegisterModule(new MapperModule());
            builder.RegisterModule(new ServicesModule());
            builder.RegisterModule(new WebApiModule());

            // Set the dependency resolver to be Autofac.
            var container = builder.Build();

            return new AutofacWebApiDependencyResolver(container);
        }

        public static ContainerBuilder GetContainerBuilder(string connectionString)
        {
            var builder = new ContainerBuilder();

            builder.RegisterModule(new DbContextModule(connectionString));
            builder.RegisterModule(new MapperModule());
            builder.RegisterModule(new ServicesModule());
            builder.RegisterModule(new WebApiModule());

            return builder;
        }
    }
}