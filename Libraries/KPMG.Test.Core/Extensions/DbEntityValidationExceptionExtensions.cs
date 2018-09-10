using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace System.Data.Entity.Validation
{
    public static class DbEntityValidationExceptionExtensions
    {
        public static Dictionary<string, IList<string>> GetAllErrorMessages(this DbEntityValidationException dbEntityValidationException)
        {
            var data = new Dictionary<string, IList<string>>();

            foreach (var item in dbEntityValidationException.EntityValidationErrors.SelectMany(x => x.ValidationErrors))
            {
                data.Add(item.PropertyName, new List<string>() { item.ErrorMessage });
            }

            return data;
        }
    }
}
