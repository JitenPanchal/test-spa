export class GetArticlItem {
  id: number;
  title: string;
  body: string;
  author: string;
  publishDate?: any;
  isPublished: boolean;
  likeCount: number;
  unLikeCount: number;
}

export class GetArticlesResponse {
  items: GetArticlItem[];
  pageNumber: number;
  pageSize: number;
  totalCount: number;
  totalPages: number;
  hasPreviousPage: boolean;
  hasNextPage: boolean;
  paginationText: string;
}
