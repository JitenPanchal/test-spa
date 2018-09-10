import { Component, OnInit, OnDestroy } from "@angular/core";
import { ArticleResponseModel } from "../../../models/article/article-response.model";
import { ArticleService } from "../../../services/article.services";
import { Router, ActivatedRoute, Params } from "@angular/router";
import { Subscription } from "rxjs/Subscription";
import { ArticleStatResponseModel } from "../../../models/article/article-stat.model";
import { Observable } from "rxjs/Rx";

declare var jquery: any;
declare var $: any;

@Component({
  selector: "app-preview-article",
  templateUrl: "./preview-article.component.html",
  styleUrls: ["./preview-article.component.css"]
})
export class PreviewArticleComponent implements OnInit, OnDestroy {
  public article: ArticleResponseModel;
  private paramSubscription: Subscription;
  public articleId: number;
  public isBackToLatestArticles: Boolean;
  public articleStatResponse: ArticleStatResponseModel;

  constructor(
    private router: Router,
    private route: ActivatedRoute,
    private articleService: ArticleService
  ) {}

  ngOnInit() {
    this.isBackToLatestArticles = this.router.url.indexOf("preview") >= 0;
    this.article = new ArticleResponseModel();
    this.articleStatResponse = new ArticleStatResponseModel();
    this.paramSubscription = this.route.params.subscribe((params: Params) => {
      this.articleId = +params["id"];
      this.getArticle();
      this.refreshArticleStats();
    });
  }

  getArticle() {
    $("#overlay").show();
    this.articleService.getArticle(this.articleId).subscribe(
      response => {
        this.article = response;
        $("#overlay").hide();
      },
      error => {
        $("#overlay").hide();
      }
    );
  }

  refreshArticleStats() {
    $("#overlay").show();
    this.articleService.getArticleStats(this.articleId).subscribe(
      response => {
        this.articleStatResponse = response;
        $("#overlay").hide();
      },
      error => {
        $("#overlay").hide();
      }
    );
  }

  onLikeClick(event) {
    // TODO - check for employee account
    $("#overlay").show();
    this.articleService
      .likeArticle(this.articleId)
      .catch((ex: any, caught: any) => {
        $("#overlay").hide();
        return Observable.empty();
      })
      .subscribe(
        (response: ArticleStatResponseModel) => {
          $("#overlay").hide();
          this.articleStatResponse = response;
        },
        error => {
          $("#overlay").hide();
          return Observable.empty();
        }
      );
  }

  onNotLikeClick(event) {
    $("#overlay").show();
    this.articleService
      .unlikeArticle(this.articleId)
      .catch((ex: any, caught: any) => {
        $("#overlay").hide();
        return Observable.empty();
      })
      .subscribe(
        (response: ArticleStatResponseModel) => {
          $("#overlay").hide();
          this.articleStatResponse = response;
        },
        error => {
          $("#overlay").hide();
          return Observable.empty();
        }
      );
  }

  ngOnDestroy() {
    if (this.paramSubscription) {
      this.paramSubscription.unsubscribe();
    }
  }
}
