

namespace KPMG.Test.Core.Database
{
    using KPMG.Test.Core.Constants;
    using KPMG.Test.Core.Enums;
    using System;

    public partial class User : BaseEntity
    {

        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string PasswordSalt { get; set; }
        public bool IsLockedOut { get; set; }
        public System.DateTime? LastLoginDate { get; set; }
        public System.DateTime? LastActivityDate { get; set; }
        public string Token { get; set; }
        public int ExpiresIn { get; set; }
        public UserType UserType { get; set; }

        /// <summary>
        /// Child ArticleFeedbacks where [ArticleFeedbacks].[UserId] point to this entity (FK_dbo.ArticleFeedbacks_dbo.Users_UserId)
        /// </summary>
        public virtual System.Collections.Generic.ICollection<ArticleFeedback> ArticleFeedbacks { get; set; }

        public User()
        {
            ArticleFeedbacks = new System.Collections.Generic.List<ArticleFeedback>();
            InitializePartial();
        }

        partial void InitializePartial();
    }

}
// </auto-generated>
