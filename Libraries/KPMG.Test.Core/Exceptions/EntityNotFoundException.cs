using System;
using System.Runtime.Serialization;

namespace KPMG.Test.Core.Exceptions
{
    public class EntityNotFoundException : Exception
    {
        const string errorMessageWithId = "Entity not found for id: {0}";

        const string errorMessage = "Entity not found";

        public EntityNotFoundException() : this(errorMessage) { }

        public EntityNotFoundException(int id) : this(string.Format(errorMessageWithId, id)) { }

        public EntityNotFoundException(string message) : base(message) { }

        public EntityNotFoundException(string message, Exception innerException) : base(message, innerException) { }

        protected EntityNotFoundException(SerializationInfo info, StreamingContext context) { }
    }
}
