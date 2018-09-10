using System.ComponentModel.DataAnnotations;

namespace KPMG.Test.WebApi.Models
{
    public class PagingParameterRequest 
    {
        [Range(1, int.MaxValue, ErrorMessage = "Invalid page number.")]
        public int PageNumber { get; set; } = 1;

        [Range(1, 50, ErrorMessage = "Invalid page size. Page size must be between 1 and 50 inclusive.")]
        public int PageSize { get; set; } = 10;
    }
}