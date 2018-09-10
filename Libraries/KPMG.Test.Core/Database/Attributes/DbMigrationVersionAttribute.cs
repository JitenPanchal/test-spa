using System;

namespace KPMG.Test.Core.Database.Attributes
{
    public class DbMigrationVersionAttribute : Attribute
    {
        public Version Version { get; private set; }

        public DbMigrationVersionAttribute(string version)
        {
            Version = System.Version.Parse(version);
        }
    }
}
