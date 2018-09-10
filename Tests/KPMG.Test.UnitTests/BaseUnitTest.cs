using AutoMapper;
using KPMG.Test.Core.Database;
using KPMG.Test.UnitTests.Fakes;
using KPMG.Test.WebApi.Models.Request;
using KPMG.Test.WebApi.Models.Response.Articles;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;

namespace KPMG.Test.UnitTests
{
    [TestClass()]
    public class BaseUnitTest 
    {
        protected static string GetUniqueStringValue(string value = "test_")
        {
            return string.Format("{0}{1}", value, Guid.NewGuid().ToString("N"));
        }

        protected static Mock<DbSet<T>> GetQueryableMockDbSet<T>(List<T> sourceList) where T : class
        {
            var data = sourceList.AsQueryable();

            var mockSet = new Mock<DbSet<T>>();

            mockSet.As<IDbAsyncEnumerable<T>>()
                .Setup(m => m.GetAsyncEnumerator())
                .Returns(new DbAsyncEnumerator<T>(data.GetEnumerator()));

            mockSet.As<IQueryable<T>>()
                .Setup(m => m.Provider)
                .Returns(new DbAsyncQueryProvider<T>(data.Provider));

            mockSet.As<IQueryable<T>>().Setup(m => m.Provider).Returns(data.Provider);
            mockSet.As<IQueryable<T>>().Setup(m => m.Expression).Returns(data.Expression);
            mockSet.As<IQueryable<T>>().Setup(m => m.ElementType).Returns(data.ElementType);
            mockSet.As<IQueryable<T>>().Setup(m => m.GetEnumerator()).Returns(() => data.GetEnumerator());

            mockSet.As<IQueryable<T>>().Setup(m => m.Provider).Returns(new DbAsyncQueryProvider<T>(data.Provider));
            mockSet.As<IDbAsyncEnumerable<T>>().Setup(m => m.GetAsyncEnumerator()).Returns(new DbAsyncEnumerator<T>(data.GetEnumerator()));

            mockSet.Setup(m => m.Add(It.IsAny<T>())).Callback((T entity) => sourceList.Add(entity));
            mockSet.Setup(m => m.Remove(It.IsAny<T>())).Callback((T entity) => sourceList.Remove(entity));

            return mockSet;
         }

        [AssemblyInitialize()]
        public static void AssemblyInitialize(TestContext context)
        {
            Mapper.Initialize(cfg =>
            {
                cfg.CreateMap<Article, ArticleResponse>();
                cfg.CreateMap<ArticleRequest, Article>();
            }
            );
        }
    }
}