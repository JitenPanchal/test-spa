import { Component, OnInit, OnDestroy } from "@angular/core";
import { ArticleService } from "../../../services/article.services";
import { Router, ActivatedRoute, Params } from "@angular/router";
import { Subscription } from "rxjs/Subscription";
import { ArticleStatResponseModel } from "../../../models/article/article-stat.model";

declare var jquery: any;
declare var $: any;

@Component({
  selector: "app-article-stats",
  templateUrl: "./article-stats.component.html",
  styleUrls: ["./article-stats.component.css"]
})
export class ArticleStatsComponent implements OnInit, OnDestroy {
  public chart: any;
  public article: ArticleStatResponseModel;
  private paramSubscription: Subscription;
  public articleId: number;

  public pieChartLabels: string[] = ["None ", "Likes", "DisLikes"];

  public pieChartData: number[] = [0, 0, 0];
  public pieChartType = "pie";

  // events
  public chartClicked(e: any): void {}

  public chartHovered(e: any): void {}

  constructor(
    private router: Router,
    private route: ActivatedRoute,
    private articleService: ArticleService
  ) {}

  ngOnInit() {
    this.article = new ArticleStatResponseModel();
    this.paramSubscription = this.route.params.subscribe((params: Params) => {
      this.articleId = +params["id"];
      $("#overlay").show();
      if (this.articleId > 0) {
        this.articleService
          .getArticleStats(this.articleId)
          .subscribe(response => {
            this.article = response;
            this.pieChartData = [
              this.article.noneCount || 0,
              this.article.likeCount || 0,
              this.article.unLikeCount || 0
            ];
            $("#overlay").hide();
          });
      } else {
        this.article = new ArticleStatResponseModel();
        $("#overlay").hide();
      }
    });
  }
  ngOnDestroy() {
    if (this.paramSubscription) {
      this.paramSubscription.unsubscribe();
    }
  }
}
