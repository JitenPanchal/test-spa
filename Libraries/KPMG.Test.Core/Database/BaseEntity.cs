using KPMG.Test.Core.Constants;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity.Infrastructure;
using System.Linq;

namespace KPMG.Test.Core.Database
{
    public abstract class BaseEntity
    {
        protected static readonly IEnumerable<ValidationResult> EmptyValidationErrors = Enumerable.Empty<ValidationResult>();

        public int Id { get; set; }

        protected static IDbContext GetDbContext(IDictionary<object, object> items)
        {
            return GetDictionaryItem<IDbContext>(items, ValidationContextKeys.DbContext);
        }

        protected static DbEntityEntry GetDbEntityEntry(IDictionary<object, object> items)
        {
            return GetDictionaryItem<DbEntityEntry>(items, ValidationContextKeys.DbEntityEntry);
        }

        protected static T GetDictionaryItem<T>(IDictionary<object, object> items, string key)
        {
            if (items == null || items.Count == 0 || !items.ContainsKey(key))
                throw new KeyNotFoundException(nameof(items));

            var entry = items[key];

            if (!(entry is T))
                throw new ArgumentException(nameof(items));

            return (T)entry;
        }

        internal virtual void OnBeforeSaveEntity(DbEntityEntry dbEntityEntry) { }
    }
}