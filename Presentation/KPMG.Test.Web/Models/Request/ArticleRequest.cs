using System;

namespace KPMG.Test.WebApi.Models.Request
{
    public class ArticleRequest
    {
        public string Title { get; set; }
        public string Body { get; set; }
        public string Author { get; set; }
        public DateTime? PublishDate { get; set; }
        public bool IsPublished { get; set; }
    }
}