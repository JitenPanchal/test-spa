import { Routes } from "@angular/router";
import { LoginComponent } from "./components/login/login.component";
import { HomeComponent } from "./components/home/home.component";
import { AuthGuard } from "./services/auth-guard.service";
import { NotFoundComponent } from "./components/not-found/not-found.component";
import { EditArticleComponent } from "./components/articles/edit-article/edit-article.component";
import { ViewArticlesComponent } from "./components/articles/view-articles/view-articles.component";
import { PreviewArticleComponent } from "./components/articles/preview-article/preview-article.component";
import { DummyComponent } from "./components/dummy/dummy.component";
import { LatestArticlesComponent } from "./components/articles/latest-articles/latest-articles.component";
import { ArticleStatsComponent } from "./components/articles/article-stats/article-stats.component";
import { MyProfileComponentComponent } from "./components/my-profile-component/my-profile-component.component";

export const RouteDefinitions: Routes = [
  { path: "login", component: LoginComponent },
  {
    path: "",
    component: HomeComponent,
    children: [
      {
        path: "latest",
        component: LatestArticlesComponent,
        canActivate: [AuthGuard]
      },
      {
        path: "articles",
        component: ViewArticlesComponent,
        canActivate: [AuthGuard]
      },
      {
        path: "edit/:id",
        component: EditArticleComponent,
        canActivate: [AuthGuard]
      },
      {
        path: "add/:id",
        component: EditArticleComponent,
        canActivate: [AuthGuard]
      },
      {
        path: "preview/:id",
        component: PreviewArticleComponent,
        canActivate: [AuthGuard]
      },
      {
        path: "view/:id",
        component: PreviewArticleComponent,
        canActivate: [AuthGuard]
      },
      {
        path: "profile",
        component: MyProfileComponentComponent,
        canActivate: [AuthGuard]
      },
      {
        path: "dummy/:title",
        component: DummyComponent,
        canActivate: [AuthGuard]
      },
      {
        path: "report/:id",
        component: ArticleStatsComponent,
        canActivate: [AuthGuard]
      },
      { path: "not-found", component: NotFoundComponent },
      { path: "**", component: NotFoundComponent }
    ],
    canActivate: [AuthGuard]
  },
  { path: "not-found", component: NotFoundComponent },
  { path: "**", component: NotFoundComponent }
];
