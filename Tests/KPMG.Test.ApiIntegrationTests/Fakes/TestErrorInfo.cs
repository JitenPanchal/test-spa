using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KPMG.Test.ApiIntegrationTests.Fakes
{
    public class TestErrorInfo
    {
        public IList<string> ErrorMessages { get; set; }

        public IDictionary<string, IList<string>> ValidationErrorMessages { get; set; }
    }
}
