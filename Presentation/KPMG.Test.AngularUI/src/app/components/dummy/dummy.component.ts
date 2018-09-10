import { Component, OnInit, OnDestroy } from "@angular/core";
import { Router, ActivatedRoute, Params } from "@angular/router";
import { Subscription } from "rxjs/Subscription";

declare var jquery: any;
declare var $: any;

@Component({
  selector: "app-dummy",
  templateUrl: "./dummy.component.html",
  styleUrls: ["./dummy.component.css"]
})
export class DummyComponent implements OnInit, OnDestroy {
  private paramSubscription: Subscription;
  public title: string;

  constructor(private router: Router, private route: ActivatedRoute) {}

  ngOnInit() {
    this.paramSubscription = this.route.params.subscribe((params: Params) => {
      this.title = params["title"];
    });
  }

  ngOnDestroy() {
    if (this.paramSubscription) {
      this.paramSubscription.unsubscribe();
    }
  }
}
