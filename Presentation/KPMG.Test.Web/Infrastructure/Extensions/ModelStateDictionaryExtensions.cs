using System.Collections.Generic;

namespace System.Web.Http.ModelBinding
{
    public static class ModelStateDictionaryExtensions
    {
        public static Dictionary<string, IList<string>> GetAllErrorMessages(this ModelStateDictionary modelStateDictionary)
        {
            var errorsMessages = new Dictionary<string, IList<string>>();

            foreach (var key in modelStateDictionary.Keys)
            {
                if (modelStateDictionary.IsValidField(key)) continue;

                if (!errorsMessages.ContainsKey(key))
                    errorsMessages.Add(key, new List<string>());

                foreach (var error in modelStateDictionary[key].Errors)
                {
                    errorsMessages[key].Add(error.ErrorMessage);
                }
            }

            return errorsMessages;
        }
    }
}