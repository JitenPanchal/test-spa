using System;
using System.IO;
using System.Linq;
using System.Reflection;
using Autofac;

namespace KPMG.Test.Web.Infrastructure.Modules
{
    public class ServicesModule : Autofac.Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            var services = AppDomain.CurrentDomain.GetAssemblies().Single(assembly => assembly.FullName.StartsWith("KPMG.Test.Services"));
            builder.RegisterAssemblyTypes(services).Where(t => t.Name.EndsWith("Service")).AsImplementedInterfaces();
        }
    }
}