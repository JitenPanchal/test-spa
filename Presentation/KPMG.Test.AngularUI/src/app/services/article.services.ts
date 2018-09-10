import { HttpClient } from "@angular/common/http";
import { Injectable, Inject } from "@angular/core";
import "rxjs/Rx";
import { ArticlesRequestModel } from "../models/article/articles-request.model";
import { getQueryString } from "../helpers/object-serializer";
import { GetArticlesResponse } from "../models/article/get-articles-response.model";
import { ArticleResponseModel } from "../models/article/article-response.model";
import { EditArticleRequestModel } from "../models/article/edit-article-request-model";
import { SecurityService } from "./security.service";
import { ArticleStatResponseModel } from "../models/article/article-stat.model";
import { HttpRequestHandler } from "../helpers/error-handler";
import { htmlEncode } from "../helpers/html-encoder";

declare var jquery: any;
declare var $: any;

@Injectable()
export class ArticleService {
  constructor(
    private http: HttpClient,
    private securityService: SecurityService,
    private httpRequestHandler: HttpRequestHandler
  ) {}

  getArticles(articleRequestModel: ArticlesRequestModel) {
    return this.http
      .get(`api/v1/articles?${getQueryString(articleRequestModel)}`)
      .map((response: GetArticlesResponse) => {
        return response;
      });
  }

  getMyArticles(articleRequestModel: ArticlesRequestModel) {
    return this.http
      .get(`api/v1/articles/my?${getQueryString(articleRequestModel)}`)
      .map((response: GetArticlesResponse) => {
        return response;
      });
  }

  getArticle(id: number) {
    return this.http
      .get(`api/v1/article/${id}`)
      .map((response: ArticleResponseModel) => {
        return response;
      });
  }

  getArticleStats(id: number) {
    return this.http
      .get(`api/v1/article/${id}/stats`)
      .map((response: ArticleStatResponseModel) => {
        return response;
      });
  }

  createArticle(createArticleRequestModel: EditArticleRequestModel) {
    createArticleRequestModel.author = this.securityService.getUserName();

    const tempCreateArticleRequestModel = $.extend(
      true,
      {},
      createArticleRequestModel
    );
    tempCreateArticleRequestModel.body = htmlEncode(
      createArticleRequestModel.body
    );

    return this.http
      .post("api/v1/article", tempCreateArticleRequestModel)
      .map((response: any) => {
        return response;
      })
      .catch((err: any, caught: any) =>
        this.httpRequestHandler.handleError(err)
      );
  }

  updateArticle(id: number, editArticleRequestModel: EditArticleRequestModel) {
    return this.http
      .put(`api/v1/article/${id}`, editArticleRequestModel)
      .map((response: any) => {
        return response;
      })
      .catch((err: any, caught: any) =>
        this.httpRequestHandler.handleError(err)
      );
  }

  deleteArticle(id: number) {
    return this.http
      .delete(`api/v1/article/${id}`)
      .map((response: any) => {
        return response;
      })
      .catch((err: any, caught: any) =>
        this.httpRequestHandler.handleError(err)
      );
  }

  likeArticle(id: number) {
    return this.http
      .put(`api/v1/article/${id}/like`, null)
      .map((response: ArticleStatResponseModel) => {
        return response;
      })
      .catch((ex: any, caught: any) => {
        return this.httpRequestHandler.handleError(ex);
      });
  }

  unpublishArticle(id: number) {
    return this.http
      .put(`api/v1/article/${id}/unpublish`, null)
      .map((response: any) => {
        return response;
      })
      .catch((ex: any, caught: any) => {
        return this.httpRequestHandler.handleError(ex);
      });
  }

  publishArticle(id: number) {
    return this.http
      .put(`api/v1/article/${id}/publish`, null)
      .map((response: any) => {
        return response;
      })
      .catch((ex: any, caught: any) => {
        return this.httpRequestHandler.handleError(ex);
      });
  }

  unlikeArticle(id: number) {
    return this.http
      .put(`api/v1/article/${id}/unlike`, null)
      .map((response: ArticleStatResponseModel) => {
        return response;
      })
      .catch((ex: any, caught: any) => {
        return this.httpRequestHandler.handleError(ex);
      });
  }
}
