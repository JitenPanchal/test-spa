using System;

namespace KPMG.Test.Core.Models.ResponseModel
{
    public class ArticleStatResponse
    {
        public int Id { get; set; }

        public string Title { get; set; }

        public string Body { get; set; }

        public string Author { get; set; }

        public DateTime? PublishDate { get; set; }

        public bool IsPublished { get; set; }

        public long? LikeCount { get; set; }

        public long? UnLikeCount { get; set; }

        public long? NoneCount { get; set; }
    }
}
