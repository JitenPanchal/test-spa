

namespace KPMG.Test.Core.Database
{
    using KPMG.Test.Core.Enums;
    using System;

    public partial class ArticleFeedback : BaseEntity
    {

        public int ArticleId { get; set; }
        public string Comments { get; set; }
        public ArticleStatus Status { get; set; }
        public int UserId { get; set; }
        public System.DateTime? FeedbackDate { get; set; }
        public System.DateTime? CommentDate { get; set; }
        public int FeedbackCount { get; set; }

        /// <summary>
        /// Parent Article pointed by [ArticleFeedbacks].([ArticleId]) (FK_dbo.ArticleFeedbacks_dbo.Articles_ArticleId)
        /// </summary>
        public virtual Article Article { get; set; }
        /// <summary>
        /// Parent User pointed by [ArticleFeedbacks].([UserId]) (FK_dbo.ArticleFeedbacks_dbo.Users_UserId)
        /// </summary>
        public virtual User User { get; set; }

        public ArticleFeedback()
        {
            InitializePartial();
        }

        partial void InitializePartial();
    }

}
// </auto-generated>
