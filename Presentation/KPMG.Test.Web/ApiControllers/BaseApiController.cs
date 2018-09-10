using AutoMapper;
using AutoMapper.QueryableExtensions;

using KPMG.Test.Core.Database;
using KPMG.Test.Core.Exceptions;
using KPMG.Test.Web.Infrastructure.Filters;
using KPMG.Test.WebApi.Models;
using KPMG.Test.WebApi.Models.Response.Articles;
using System;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web.Http;

namespace KPMG.Test.Web.ApiControllers
{
    /* Use [AllowAnonymous] attribute at method or class level to skip authorization */
    [ApiAuthorizeUser]
    public abstract class BaseApiController : ApiController
    {
        private readonly IMapper mapper;
        private readonly IDbContext dbContext;

        public BaseApiController(IMapper mapper, IDbContext dbContext)
        {
            this.mapper = mapper;
            this.dbContext = dbContext;
        }

        protected async Task<IPagedList<T>> ToPagedList<T>(IQueryable<T> source, int pageNumber, int pageSize) where T : class
        {
            var totalCount = await source.CountAsync();

            var totalPages = totalCount / pageSize;

            if (totalCount % pageSize > 0)
                totalPages++;

            var data = await source.Skip((pageNumber - 1) * pageSize).Take(pageSize).ToListAsync();

            return new PagedList<T>(data, pageNumber, pageSize, totalCount);
        }

        protected async Task<IHttpActionResult> Get<TEntity, TMapTo>(IQueryable<TEntity> query, PagingParameterRequest pagingParameter) where TEntity : BaseEntity where TMapTo : class
        {
            var data = await ToPagedList(query.ProjectTo<TMapTo>(mapper.ConfigurationProvider), pagingParameter.PageNumber, pagingParameter.PageSize);

            return Ok(data);
        }

        protected async Task<IHttpActionResult> Get<TEntity, TMapTo>(int id) where TEntity : BaseEntity where TMapTo : class
        {
            return Ok(mapper.Map<TMapTo>(await dbContext.GetByIdAsync<TEntity>(id, true, true)));
        }

        protected async Task<IHttpActionResult> Post<TRequestModel, TEntity>(TRequestModel requestModel) where TEntity : BaseEntity where TRequestModel : class
        {
            var entity = mapper.Map<TEntity>(requestModel);

            dbContext.Set<TEntity>().Add(entity);

            await dbContext.SaveChangesAsync();

            return Ok(mapper.Map<ArticleResponse>(entity));
        }

        protected async Task<IHttpActionResult> Put<TRequestModel, TEntity>(int id, TRequestModel requestModel) where TEntity : BaseEntity where TRequestModel : class
        {
            var entity = await dbContext.GetByIdAsync<TEntity>(id, false, true);

            mapper.Map(requestModel, entity);

            await dbContext.SaveChangesAsync();

            return Ok(mapper.Map<ArticleResponse>(entity));
        }

        protected async Task<IHttpActionResult> Delete<TEntity>(int id) where TEntity : BaseEntity
        {
            var entity = dbContext.GetById<TEntity>(id, false, true);

            dbContext.Set<TEntity>().Remove(entity);

            await dbContext.SaveChangesAsync();

            return Ok(entity);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (dbContext != null)
                    dbContext.Dispose();
            }

            base.Dispose(disposing);
        }
    }
}