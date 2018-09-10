using KPMG.Test.Core.Constants;
using KPMG.Test.Core.Exceptions;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.ModelConfiguration;
using System.Data.Entity.Validation;
using System.Diagnostics;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;

namespace KPMG.Test.Core.Database
{
    public abstract class BaseDbContext : System.Data.Entity.DbContext, IDbContext
    {
        public BaseDbContext(string nameOrConnectionString) : base(nameOrConnectionString)
        {
#if (DEBUG)
            // log sql queries
            Database.Log = s => Debug.Write(s);
#endif
        }

        public virtual async Task<TEntity> GetByIdAsync<TEntity>(int id, bool readOnly = true, bool throwExceptionOnEntityNotFound = false) where TEntity : BaseEntity
        {
            TEntity entity = await GetByIdQuery<TEntity>(id, readOnly).SingleOrDefaultAsync();

            if (throwExceptionOnEntityNotFound && entity == null)
                throw new EntityNotFoundException(id);

            return entity;
        }

        public virtual IQueryable<TEntity> GetByIdQuery<TEntity>(int id, bool readOnly = true) where TEntity : BaseEntity
        {
            var query = Set<TEntity>().Where(it => it.Id == id);

            if (readOnly)
                query = query.AsNoTracking();

            return query;
        }

        public virtual TEntity GetById<TEntity>(int id, bool readOnly = true, bool throwExceptionOnEntityNotFound = false) where TEntity : BaseEntity
        {
            TEntity entity = GetByIdQuery<TEntity>(id, readOnly).SingleOrDefault();

            if (throwExceptionOnEntityNotFound && entity == null)
                throw new EntityNotFoundException(id);

            return entity;
        }

        public virtual IQueryable<TEntity> GetByIds<TEntity>(IList<int> ids, bool readOnly = true) where TEntity : BaseEntity
        {
            var query = Set<TEntity>().Where(entity => ids.Contains(entity.Id));

            return readOnly ? query.AsNoTracking() : query;
        }

        protected override DbEntityValidationResult ValidateEntity(DbEntityEntry entityEntry, IDictionary<object, object> items)
        {
            items.Add(new KeyValuePair<object, object>(ValidationContextKeys.DbEntityEntry, entityEntry));
            items.Add(new KeyValuePair<object, object>(ValidationContextKeys.DbContext, this));

            return base.ValidateEntity(entityEntry, items);
        }

        public virtual IQueryable<TEntity> GetPagedQuery<TEntity>(int pageNumber, int pageSize, bool readOnly = true) where TEntity : BaseEntity
        {
            return GetPagedQuery<TEntity, int>(pageNumber, pageSize, it => it.Id, readOnly);
        }

        public virtual IQueryable<TEntity> GetPagedQuery<TEntity, TKey>(int pageNumber, int pageSize, Expression<Func<TEntity, TKey>> orderBy, bool readOnly = true) where TEntity : BaseEntity
        {
            var query = readOnly ? Set<TEntity>().AsNoTracking() : Set<TEntity>();

            return query.OrderBy(orderBy).Skip((pageNumber - 1) * pageSize).Take(pageSize);
        }

        public bool IsValidEntityId<TEntity>(int id, bool throwExceptionOnEntityNotFound = false) where TEntity : BaseEntity
        {
            var isValidEntityId = GetByIdQuery<TEntity>(id, true).Count() == 1;

            if (throwExceptionOnEntityNotFound && !isValidEntityId)
                throw new EntityNotFoundException(id);

            return isValidEntityId;
        }

        public override int SaveChanges()
        {
            OnBeforeSaveChanges();
            return base.SaveChanges();
        }

        public override Task<int> SaveChangesAsync(CancellationToken cancellationToken)
        {
            OnBeforeSaveChanges();
            return base.SaveChangesAsync(cancellationToken);
        }

        private void OnBeforeSaveChanges()
        {
            foreach (var entityEntry in ChangeTracker.Entries())
            {
                (entityEntry.Entity as BaseEntity).OnBeforeSaveEntity(entityEntry);
            }
        }
    }
}