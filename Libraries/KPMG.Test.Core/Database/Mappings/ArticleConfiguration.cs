

namespace KPMG.Test.Core.Database
{
    using System;

    public partial class ArticleConfiguration : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<Article>
    {
        public ArticleConfiguration()
            : this("dbo")
        {
        }

        public ArticleConfiguration(string schema)
        {
            ToTable("Articles", schema);
            HasKey(x => x.Id);

            Property(x => x.Id).HasColumnName(@"Id").HasColumnType("int").IsRequired().HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.Identity);
            Property(x => x.Title).HasColumnName(@"Title").HasColumnType("nvarchar").IsRequired().HasMaxLength(255);
            Property(x => x.Body).HasColumnName(@"Body").HasColumnType("ntext").IsRequired().IsMaxLength();
            Property(x => x.Author).HasColumnName(@"Author").HasColumnType("nvarchar").IsRequired().HasMaxLength(255);
            Property(x => x.PublishDate).HasColumnName(@"PublishDate").HasColumnType("datetime").IsOptional();
            Property(x => x.AddedByUserId).HasColumnName(@"AddedByUserId").HasColumnType("int").IsRequired();
            Property(x => x.IsPublished).HasColumnName(@"IsPublished").HasColumnType("bit").IsRequired();
            InitializePartial();
        }
        partial void InitializePartial();
    }

}
// </auto-generated>
