import { Component, OnInit } from "@angular/core";
import { Router } from "@angular/router";
import { ArticleService } from "../../../services/article.services";
import { ArticlesRequestModel } from "../../../models/article/articles-request.model";
import { GetArticlesResponse } from "../../../models/article/get-articles-response.model";

declare var jquery: any;
declare var $: any;

@Component({
  selector: "app-view-articles",
  templateUrl: "./view-articles.component.html",
  styleUrls: ["./view-articles.component.css"]
})
export class ViewArticlesComponent implements OnInit {
  public articles: GetArticlesResponse = new GetArticlesResponse();
  public article: ArticlesRequestModel = new ArticlesRequestModel();

  constructor(private router: Router, private articleService: ArticleService) {}

  ngOnInit() {
    this.article.pageSize = 5;
    this.articles.items = [];
    this.getArticles(1);
  }

  getArticles(pageNumber: number) {
    this.article.pageNumber = pageNumber;
    $("#overlay").show();
    this.articleService.getMyArticles(this.article).subscribe(response => {
      this.articles = response;
      $("#overlay").hide();
    });
  }

  onGoToPageButtonClick(pageNumber: number) {
    this.getArticles(pageNumber);
  }

  onNextButtonClick(pageNumber: number) {
    this.getArticles(++pageNumber);
  }

  onPreviousButtonClick(pageNumber: number) {
    this.getArticles(--pageNumber);
  }

  onAddClick($event) {
    this.router.navigate(["", "add", "-1"]);
  }

  onSortByChange(event) {
    this.article.sortBy = event.target.value;
    this.getArticles(1);
  }

  onDeleteButtonClick(articleId) {
    if (
      window.confirm("Are you sure you want to remove/unpublish this article ?")
    ) {
      this.articleService
        .unpublishArticle(articleId)
        .subscribe((response: any) => {
          this.getArticles(this.article.pageNumber);
        });
    }
  }
  onPublishButtonClick(articleId) {
    this.articleService.publishArticle(articleId).subscribe((response: any) => {
      this.getArticles(this.article.pageNumber);
    });
  }
}
