using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Data.Entity;
using System.Configuration;
using KPMG.Test.Core.Database.Migration;
using System.Transactions;

namespace KPMG.Test.IntegrationTests
{
    [TestClass()]
    public class BaseIntegrationTest 
    {
        static readonly string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected static string testDatabaseConnection = null;

        [AssemblyInitialize()]
        public static void AssemblyInitialize(TestContext context)
        {
            testDatabaseConnection = string.Format(connectionString, Guid.NewGuid().ToString("N"));

            using (var db = new Core.Database.DbContext(testDatabaseConnection))
            {
                db.Database.CreateIfNotExists();

                var migration = new MigrateDatabaseToLatestVersion<Core.Database.DbContext, KPMGDbMigrationConfiguration>(true);

                migration.InitializeDatabase(db);
            }
        }

        [AssemblyCleanup()]
        public static void AssemblyCleanup()
        {
            Database.Delete(testDatabaseConnection);
        }

        protected static string GetUniqueStringValue(string value = "test_")
        {
            return string.Format("{0}{1}", value, Guid.NewGuid().ToString("N"));
        }

        protected static TransactionScope CreateTransactionScope()
        {
            return new TransactionScope(TransactionScopeOption.RequiresNew, TransactionScopeAsyncFlowOption.Enabled);
        }
    }
}