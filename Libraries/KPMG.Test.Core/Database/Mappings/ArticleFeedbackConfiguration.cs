

namespace KPMG.Test.Core.Database
{
    using System;

    public partial class ArticleFeedbackConfiguration : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<ArticleFeedback>
    {
        public ArticleFeedbackConfiguration()
            : this("dbo")
        {
        }

        public ArticleFeedbackConfiguration(string schema)
        {
            ToTable("ArticleFeedbacks", schema);
            HasKey(x => x.Id);

            Property(x => x.Id).HasColumnName(@"Id").HasColumnType("int").IsRequired().HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.Identity);
            Property(x => x.ArticleId).HasColumnName(@"ArticleId").HasColumnType("int").IsRequired();
            Property(x => x.Comments).HasColumnName(@"Comments").HasColumnType("nvarchar(max)").IsOptional();
            Property(x => x.Status).HasColumnName(@"Status").HasColumnType("tinyint").IsRequired();
            Property(x => x.UserId).HasColumnName(@"UserId").HasColumnType("int").IsRequired();
            Property(x => x.FeedbackDate).HasColumnName(@"FeedbackDate").HasColumnType("datetime").IsOptional();
            Property(x => x.CommentDate).HasColumnName(@"CommentDate").HasColumnType("datetime").IsOptional();
            Property(x => x.FeedbackCount).HasColumnName(@"FeedbackCount").HasColumnType("int");

            HasRequired(a => a.Article).WithMany(b => b.ArticleFeedbacks).HasForeignKey(c => c.ArticleId).WillCascadeOnDelete(false);
            HasRequired(a => a.User).WithMany(b => b.ArticleFeedbacks).HasForeignKey(c => c.UserId).WillCascadeOnDelete(false);
            InitializePartial();
        }
        partial void InitializePartial();
    }

}
// </auto-generated>
