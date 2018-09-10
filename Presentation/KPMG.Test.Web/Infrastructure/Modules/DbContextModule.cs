using Autofac;
using KPMG.Test.Core.Database;
using System.Collections.Generic;
using System.Configuration;

namespace KPMG.Test.Web.Infrastructure.Modules
{
    public class DbContextModule : Module
    {
        public DbContextModule(string connectionString) 
        {
            ConnectionString = connectionString;
        }

        public string ConnectionString { get; private set; } = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType(typeof(DbContext)).As(typeof(IDbContext))
                      .WithParameters(new List<TypedParameter>()
                      {
                          new TypedParameter(typeof(string),ConnectionString)
                      }).InstancePerRequest();
        }
    }
}