import { Component, OnInit, OnDestroy } from "@angular/core";
import { ArticleResponseModel } from "../../../models/article/article-response.model";
import { ArticleService } from "../../../services/article.services";
import { Router, ActivatedRoute, Params } from "@angular/router";
import { Subscription } from "rxjs/Subscription";
import { htmlDecode } from "../../../helpers/html-encoder";

declare var jquery: any;
declare var $: any;

@Component({
  selector: "app-edit-article",
  templateUrl: "./edit-article.component.html",
  styleUrls: ["./edit-article.component.css"]
})
export class EditArticleComponent implements OnInit, OnDestroy {
  public article: ArticleResponseModel;
  private paramSubscription: Subscription;
  public articleId: number;

  constructor(
    private router: Router,
    private route: ActivatedRoute,
    private articleService: ArticleService
  ) {}

  ngOnInit() {
    this.article = new ArticleResponseModel();
    this.paramSubscription = this.route.params.subscribe((params: Params) => {
      this.articleId = +params["id"];
      $("#overlay").show();
      if (this.articleId > 0) {
        this.articleService.getArticle(this.articleId).subscribe(response => {
          this.article = response;
          this.article.body = htmlDecode(response.body);
          $("#overlay").hide();
        });
      } else {
        this.article = new ArticleResponseModel();
        $("#overlay").hide();
      }
    });
  }

  onSaveClick(event, saveAndNew: boolean) {
    const button: any = $(event.currentTarget);
    const loadingText: string = event.currentTarget.dataset.loadingText;
    this.saveArticle(button, loadingText, saveAndNew);
  }

  saveArticle(button, loadingText: string, saveAndNew: boolean) {
    if (button.html() !== loadingText) {
      button.data("original-text", button.html());
      button.html(loadingText);
    }

    if (this.articleId <= 0) {
      this.articleService
        .createArticle(this.article)
        .finally(() => {
          button.html(button.data("original-text"));
        })
        .subscribe((response: any) => {
          if (saveAndNew) {
            this.article = new ArticleResponseModel();
            this.router.navigate(["", "add", -1]);
          } else {
            this.router.navigate(["", "edit", response.id]);
          }
        });
    } else {
      this.articleService
        .updateArticle(this.articleId, this.article)
        .finally(() => {
          button.html(button.data("original-text"));
        })
        .subscribe((response: any) => {
          this.router.navigate(["", "edit", response.id]);
        });
    }
  }

  ngOnDestroy() {
    if (this.paramSubscription) {
      this.paramSubscription.unsubscribe();
    }
  }
}
