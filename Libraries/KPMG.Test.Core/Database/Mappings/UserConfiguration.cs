

namespace KPMG.Test.Core.Database
{
    using System;

    public partial class UserConfiguration : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<User>
    {
        public UserConfiguration()
            : this("dbo")
        {
        }

        public UserConfiguration(string schema)
        {
            ToTable("Users", schema);
            HasKey(x => x.Id);

            Property(x => x.Id).HasColumnName(@"Id").HasColumnType("int").IsRequired().HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.Identity);
            Property(x => x.Name).HasColumnName(@"Name").HasColumnType("nvarchar").IsRequired().HasMaxLength(256);
            Property(x => x.Email).HasColumnName(@"Email").HasColumnType("nvarchar").IsRequired().HasMaxLength(256);
            Property(x => x.Password).HasColumnName(@"Password").HasColumnType("nvarchar").IsRequired().HasMaxLength(128);
            Property(x => x.PasswordSalt).HasColumnName(@"PasswordSalt").HasColumnType("nvarchar").IsRequired().HasMaxLength(128);
            Property(x => x.IsLockedOut).HasColumnName(@"IsLockedOut").HasColumnType("bit").IsRequired();
            Property(x => x.LastLoginDate).HasColumnName(@"LastLoginDate").HasColumnType("datetime").IsOptional();
            Property(x => x.LastActivityDate).HasColumnName(@"LastActivityDate").HasColumnType("datetime").IsOptional();
            Property(x => x.Token).HasColumnName(@"Token").HasColumnType("nvarchar").IsOptional().HasMaxLength(50);
            Property(x => x.ExpiresIn).HasColumnName(@"ExpiresIn").HasColumnType("int").IsRequired();
            Property(x => x.UserType).HasColumnName(@"UserType").HasColumnType("tinyint").IsRequired();
            InitializePartial();
        }
        partial void InitializePartial();
    }

}
// </auto-generated>
