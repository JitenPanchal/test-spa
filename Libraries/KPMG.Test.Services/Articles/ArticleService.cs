using KPMG.Test.Core.Database;
using KPMG.Test.Core.Models.ResponseModel;
using System;
using System.Linq;
using System.Threading.Tasks;
using System.Data;
using System.Data.Entity;
using KPMG.Test.Core.Constants;
using KPMG.Test.Services.ApplicationSettings;
using KPMG.Test.Core.Enums;

namespace KPMG.Test.Services.Articles
{
    public class ArticleService : BaseService, IArticleService
    {
        private readonly IApplicationSettingsService applicationSettingsService;

        public ArticleService(IDbContext dbContext, IApplicationSettingsService applicationSettingsService) : base(dbContext)
        {
            this.applicationSettingsService = applicationSettingsService;
        }

        public virtual void PublishArticle(int articleId)
        {
            if (articleId <= 0)
                throw new ArgumentException(nameof(articleId));

            var article = dbContext.GetById<Article>(articleId, false, true);
            SetPublishArticleFields(article, true);

            dbContext.SaveChanges();
        }

        public virtual async Task PublishArticleAsync(int articleId)
        {
            if (articleId <= 0)
                throw new ArgumentException(nameof(articleId));

            var article = await dbContext.GetByIdAsync<Article>(articleId, false, true);
            SetPublishArticleFields(article, true);

            await dbContext.SaveChangesAsync();
        }

        public virtual void UnPublishArticle(int articleId)
        {
            if (articleId <= 0)
                throw new ArgumentException(nameof(articleId));

            var article = dbContext.GetById<Article>(articleId, false, true);
            SetPublishArticleFields(article, false);

            dbContext.SaveChanges();
        }

        public virtual async Task UnPublishArticleAsync(int articleId)
        {
            if (articleId <= 0)
                throw new ArgumentException(nameof(articleId));

            var article = await dbContext.GetByIdAsync<Article>(articleId, false, true);
            SetPublishArticleFields(article, false);

            await dbContext.SaveChangesAsync();
        }

        public virtual IQueryable<ArticleMostLiked> GetArticleMostLikedQuery()
        {
            var countQuery = (from it in dbContext.Set<ArticleFeedback>()
                              group it by it.ArticleId
                             into g
                              orderby g.Count() descending
                              select new { ArticleId = g.Key, Count = g.Count() }).Take(1);

            var query = from it in dbContext.Set<Article>().AsNoTracking()
                        join tmp in countQuery on it.Id equals tmp.ArticleId
                        join user in dbContext.Set<User>().AsNoTracking() on it.AddedByUserId equals user.Id
                        select new ArticleMostLiked()
                        {
                            Id = it.Id,
                            Title = it.Title,
                            Body = it.Body,
                            Author = it.Author,
                            PublishDate = it.PublishDate,
                            IsPublished = it.IsPublished,
                            Count = tmp.Count,
                            AddedByUserName = user.Name
                        };

            return query;
        }

        public virtual void SaveArticleFeedback(int articleId, int userId, ArticleStatus articleStatus)
        {
            if (articleId <= 0)
                throw new ArgumentException(nameof(articleId));

            if (userId <= 0)
                throw new ArgumentException(nameof(userId));

            // validate article
            var article = dbContext.GetById<Article>(articleId, false, true);

            // validate user
            var user = dbContext.GetById<User>(userId, false, true);

            var articleFeedback = (GetArticleFeeback(articleId, userId)).FirstOrDefault();

            articleFeedback = SetArticleFeedbackFields(articleStatus, article, user, articleFeedback);

            dbContext.SaveChanges();
        }

        public virtual async Task SaveArticleFeedbackAsync(int articleId, int userId, ArticleStatus articleStatus)
        {
            if (articleId <= 0)
                throw new ArgumentException(nameof(articleId));

            if (userId <= 0)
                throw new ArgumentException(nameof(userId));

            // validate article
            var article = await dbContext.GetByIdAsync<Article>(articleId, false, true);

            // validate user
            var user = await dbContext.GetByIdAsync<User>(userId, false, true);

            var articleFeedback = await (GetArticleFeeback(articleId, userId)).FirstOrDefaultAsync();

            articleFeedback = SetArticleFeedbackFields(articleStatus, article, user, articleFeedback);

            await dbContext.SaveChangesAsync();
        }

        public virtual void SaveArticleComments(int articleId, int userId, string comments)
        {
            if (articleId <= 0)
                throw new ArgumentException(nameof(articleId));

            if (userId <= 0)
                throw new ArgumentException(nameof(userId));

            if (string.IsNullOrWhiteSpace(comments))
                throw new ArgumentException(nameof(comments));

            // validate article
            var article = dbContext.GetById<Article>(articleId, false, true);

            // validate user
            var user = dbContext.GetById<User>(userId, false, true);

            var articleFeedback = (GetArticleFeeback(articleId, userId)).FirstOrDefault();

            articleFeedback = SetArticleCommentsFields(comments, article, user, articleFeedback);

            dbContext.SaveChanges();
        }

        public virtual async Task SaveArticleCommentsAsync(int articleId, int userId, string comments)
        {
            if (articleId <= 0)
                throw new ArgumentException(nameof(articleId));

            if (userId <= 0)
                throw new ArgumentException(nameof(userId));

            if (string.IsNullOrWhiteSpace(comments))
                throw new ArgumentException(nameof(comments));

            // validate article
            var article = await dbContext.GetByIdAsync<Article>(articleId, false, true);

            // validate user
            var user = await dbContext.GetByIdAsync<User>(userId, false, true);

            var articleFeedback = await (GetArticleFeeback(articleId, userId)).FirstOrDefaultAsync();

            articleFeedback = SetArticleCommentsFields(comments, article, user, articleFeedback);

            await dbContext.SaveChangesAsync();
        }

        public virtual IQueryable<ArticleFeedback> GetArticleFeeback(int articleId, int userId)
        {
            return from item in dbContext.Set<ArticleFeedback>()
                   where item.ArticleId == articleId && item.UserId == userId
                   select item;
        }

        public IQueryable<ArticleStatResponse> GetArticlesWithStatQuery(ArticlesSortBy articlesSortBy)
        {
            var query = GetArticlesWithStatQuery();

            switch (articlesSortBy)
            {
                case ArticlesSortBy.MostLikes:
                    query = query.OrderByDescending(it => it.LikeCount);
                    break;
                case ArticlesSortBy.MostRecents:
                    query = query.OrderByDescending(it => it.PublishDate);
                    break;
            }

            return query;
        }

        public IQueryable<ArticleStatResponse> GetMyArticlesWithStatQuery(string username, ArticlesSortBy articlesSortBy)
        {
            var query = GetArticlesWithStatQuery().Where(it => it.Author == username);

            switch (articlesSortBy)
            {
                case ArticlesSortBy.MostLikes:
                    query = query.OrderByDescending(it => it.LikeCount);
                    break;
                case ArticlesSortBy.MostRecents:
                    query = query.OrderByDescending(it => it.PublishDate);
                    break;
            }

            return query;
        }

        public virtual IQueryable<ArticleStatResponse> GetArticleWithStatQuery(int articleId)
        {
            var query = GetArticlesWithStatQuery().Where(it => it.Id == articleId);

            return query;
        }

        public IQueryable<ArticleStatResponse> GetArticlesWithStatQuery()
        {
            var likeQuery = GetArticleStatQuery(ArticleStatus.Like);
            var unlikeQuery = GetArticleStatQuery(ArticleStatus.UnLike);
            var noneQuery = GetArticleStatQuery(ArticleStatus.None);

            var countLikeQuery = (
                from it in likeQuery
                group it by it.ArticleId
                into g
                orderby g.Count() descending
                select new { ArticleId = g.Key, Count = g.Count() }
            );

            var countUnLikeQuery = (
                from it in unlikeQuery
                group it by it.ArticleId
                into g
                orderby g.Count() descending
                select new { ArticleId = g.Key, Count = g.Count() }
            );

            var countNoneQuery = (
                from it in noneQuery
                group it by it.ArticleId
                into g
                orderby g.Count() descending
                select new { ArticleId = g.Key, Count = g.Count() }
            );



            var query =
                from item in dbContext.Set<Article>()
                join statLikeItem in countLikeQuery on item.Id equals statLikeItem.ArticleId into likeTemp
                join statUnLikeItem in countUnLikeQuery on item.Id equals statUnLikeItem.ArticleId into unLikeTemp
                join statNoneItem in countNoneQuery on item.Id equals statNoneItem.ArticleId into noneTemp
                from likeTempItem in likeTemp.DefaultIfEmpty()
                from unLikeTempItem in unLikeTemp.DefaultIfEmpty()
                from noneTempItem in noneTemp.DefaultIfEmpty()
                select new ArticleStatResponse()
                {
                    Id = item.Id,
                    Title = item.Title,
                    Body = item.Body,
                    Author = item.Author,
                    PublishDate = item.PublishDate,
                    IsPublished = item.IsPublished,
                    LikeCount = likeTempItem.Count,
                    UnLikeCount = unLikeTempItem.Count,
                    NoneCount = noneTempItem.Count,
                };

            return query;
        }

        public virtual IQueryable<ArticleFeedback> GetArticleStatQuery(ArticleStatus status)
        {
            var query = from it in dbContext.Set<ArticleFeedback>()
                        where it.Status == status
                        select it;
            return query;
        }

        #region Helpers

        private ArticleFeedback SetArticleFeedbackFields(ArticleStatus articleStatus, Article article, User user, ArticleFeedback articleFeedback)
        {
            if (articleFeedback == null)
            {
                articleFeedback = new ArticleFeedback();
                dbContext.Set<ArticleFeedback>().Add(articleFeedback);
            }

            articleFeedback.FeedbackCount++;

            // check max no. of feedback attempts
            if (articleFeedback.FeedbackCount > applicationSettingsService.MaxArticleFeedbackAttempts)
                throw new InvalidOperationException(UserFeedbackMessages.InvalidArticleFeedbackOperation);

            articleFeedback.Article = article;
            articleFeedback.User = user;
            articleFeedback.Status = articleStatus;
            articleFeedback.FeedbackDate = DateTime.UtcNow;

            return articleFeedback;
        }

        private static void SetPublishArticleFields(Article article, bool publish)
        {
            article.PublishDate = publish ? (DateTime?)DateTime.UtcNow : null;
            article.IsPublished = publish;
        }

        private ArticleFeedback SetArticleCommentsFields(string comments, Article article, User user, ArticleFeedback articleFeedback)
        {
            if (articleFeedback == null)
            {
                articleFeedback = new ArticleFeedback();
                dbContext.Set<ArticleFeedback>().Add(articleFeedback);
            }

            articleFeedback.Article = article;
            articleFeedback.User = user;
            articleFeedback.Comments = comments;
            articleFeedback.CommentDate = DateTime.UtcNow;
            return articleFeedback;
        }

        #endregion
    }
}