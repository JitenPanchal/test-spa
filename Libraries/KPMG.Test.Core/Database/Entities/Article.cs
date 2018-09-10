

namespace KPMG.Test.Core.Database
{
    using System;

    public partial class Article : BaseEntity
    {

        public string Title { get; set; }
        public string Body { get; set; }
        public string Author { get; set; }
        public System.DateTime? PublishDate { get; set; }
        public int AddedByUserId { get; set; }
        public bool IsPublished { get; set; }

        /// <summary>
        /// Child ArticleFeedbacks where [ArticleFeedbacks].[ArticleId] point to this entity (FK_dbo.ArticleFeedbacks_dbo.Articles_ArticleId)
        /// </summary>
        public virtual System.Collections.Generic.ICollection<ArticleFeedback> ArticleFeedbacks { get; set; }

        public Article()
        {
            ArticleFeedbacks = new System.Collections.Generic.List<ArticleFeedback>();
            InitializePartial();
        }

        partial void InitializePartial();
    }

}
// </auto-generated>
