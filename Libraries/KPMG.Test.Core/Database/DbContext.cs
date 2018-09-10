using System;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Reflection;


namespace KPMG.Test.Core.Database
{
    public class DbContext : BaseDbContext, IDbContext
    {
        public DbContext(string nameOrConnectionString) : base(nameOrConnectionString) { }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            var typesToRegister = from entityType in Assembly.GetExecutingAssembly().GetTypes()
                                  where !string.IsNullOrWhiteSpace(entityType.Namespace) &&
                                  entityType.BaseType != null && entityType.BaseType.IsGenericType
                                  let genericType = entityType.BaseType.GetGenericTypeDefinition()
                                  where genericType == typeof(EntityTypeConfiguration<>) || genericType == typeof(ComplexTypeConfiguration<>)
                                  select entityType;

            foreach (var type in typesToRegister)
            {
                dynamic configurationInstance = Activator.CreateInstance(type);
                modelBuilder.Configurations.Add(configurationInstance);
            }

            base.OnModelCreating(modelBuilder);
        }
    }
}