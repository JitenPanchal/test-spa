﻿using System;

namespace KPMG.Test.WebApi.Models.Response.Articles
{
    public class ArticleResponse
    {
        public int Id { get; set; }

        public string Title { get; set; }

        public string Body { get; set; }

        public string Author { get; set; }

        public DateTime? PublishDate { get; set; }

        public bool IsPublished { get; set; }
    }
}