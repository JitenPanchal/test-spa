using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KPMG.Test.Services.ApplicationSettings
{
    public interface IApplicationSettingsService
    {
        int PageSize { get; }

        int MaxArticleFeedbackAttempts { get; }
    }
}
