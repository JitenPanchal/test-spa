using System;

namespace KPMG.Test.Web.Infrastructure.Filters
{
    [AttributeUsage(AttributeTargets.Method, AllowMultiple = false)]
    public class SecurableAttribute : Attribute
    {
        public SecurableAttribute(string securableKey, string securable)
        {
            SecurableKey = securableKey;
            Securable = securable;
        }

        public string SecurableKey { get; private set; }

        // Friendly permission/securable name for use in UI
        public string Securable { get; private set; }
    }
}