import { Component, OnInit } from "@angular/core";
import { Router } from "@angular/router";
import { ArticleService } from "../../../services/article.services";
import { ArticlesRequestModel } from "../../../models/article/articles-request.model";
import { GetArticlesResponse } from "../../../models/article/get-articles-response.model";

declare var jquery: any;
declare var $: any;

@Component({
  selector: "app-latest-articles",
  templateUrl: "./latest-articles.component.html",
  styleUrls: ["./latest-articles.component.css"]
})
export class LatestArticlesComponent implements OnInit {
  public articles: GetArticlesResponse = new GetArticlesResponse();
  public article: ArticlesRequestModel = new ArticlesRequestModel();

  constructor(private router: Router, private articleService: ArticleService) {}

  ngOnInit() {
    this.article.pageSize = 5;
    this.articles.items = [];
    this.article.sortBy = 0;
    this.getArticles(1);
  }

  getArticles(pageNumber: number) {
    this.article.pageNumber = pageNumber;
    this.loadArticles();
  }

  loadArticles() {
    $("#overlay").show();
    this.articleService.getArticles(this.article).subscribe(response => {
      this.articles = response;
      $("#overlay").hide();
    });
  }

  onSortByChange(event) {
    this.article.sortBy = event.target.value;
    this.loadArticles();
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
}
