using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;

namespace KPMG.Test.Core.Database
{
    public partial class Article : BaseEntity, IValidatableObject
    {
        const string TitleError = "Article with title '{0}' already exists.";

        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            var dbEntityEntry = GetDbEntityEntry(validationContext.Items);

            if (dbEntityEntry.State == EntityState.Deleted)
                return EmptyValidationErrors;

            var dbContext = GetDbContext(validationContext.Items);

            if (dbEntityEntry.State == EntityState.Added || dbEntityEntry.State == EntityState.Modified)
                return ValidateOnAddOrUpdate(dbEntityEntry, dbContext);
            else
                return EmptyValidationErrors;
        }

        private IEnumerable<ValidationResult> ValidateOnAddOrUpdate(DbEntityEntry dbEntityEntry, IDbContext dbContext) {

            var entityCount = dbContext.Set<Article>().AsNoTracking().Where(it => it.Title == Title && Id != it.Id).Count();

            IList<ValidationResult> validationResults = new List<ValidationResult>();

            if (entityCount > 0)
                validationResults.Add(new ValidationResult(string.Format(TitleError, this.Title), new string[] { nameof(Title) }));

            return validationResults;
        }
    }
}