using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace KPMG.Test.Core.Database
{
    public class PagedList<T> : IPagedList<T> where T : class
    {
        public PagedList(IQueryable<T> source, int pageNumber, int pageSize)
        {
            var total = source.Count();

            Init(pageNumber, pageSize, total);

            Items = source.Skip((pageNumber - 1) * pageSize).Take(pageSize).ToList();
        }

        public PagedList(IList<T> source, int pageNumber, int pageSize)
        {
            Init(pageNumber, pageSize, source.Count);
            Items = source.Skip((pageNumber - 1) * pageSize).Take(pageSize).ToList();
        }

        public PagedList(IEnumerable<T> source, int pageNumber, int pageSize, int totalCount)
        {
            Init(pageNumber, pageSize, totalCount);
            Items = source;
        }

        private void Init(int pageNumber, int pageSize, int totalCount)
        {
            TotalCount = totalCount;
            TotalPages = (int)Math.Ceiling(totalCount / (double)pageSize);

            PageSize = pageSize;
            PageNumber = pageNumber;
        }

        public IEnumerable<T> Items
        {
            get;
            private set;
        }

        public int PageNumber { get; private set; }

        public int PageSize { get; private set; }

        public int TotalCount { get; private set; }

        public int TotalPages { get; private set; }

        public bool HasPreviousPage => PageNumber > 1;

        public bool HasNextPage => PageNumber < TotalPages;

        public string PaginationText => $"{((PageNumber * PageSize) - PageSize) + 1} to {GetToCount()} of {TotalCount} items";

        private int GetToCount()
        {
            if (PageNumber == TotalPages)
            {
                if (TotalCount % PageSize == 0)
                {
                    return TotalCount;
                }
                else {
                    return (PageNumber - 1) * PageSize + (TotalCount % PageSize);
                }
            }
            else
            {
                return (PageNumber * PageSize);
            }
        }
    }
}