import { BrowserModule } from "@angular/platform-browser";
import { NgModule } from "@angular/core";
import { RouterModule } from "@angular/router";
import { FormsModule } from "@angular/forms";
import { HttpClientModule } from "@angular/common/http";
import { LoginComponent } from "./components/login/login.component";
import { SecurityService } from "./services/security.service";
import { AppComponent } from "./app.component";
import { HomeComponent } from "./components/home/home.component";
import { AuthGuard } from "./services/auth-guard.service";
import { getBaseUrl } from "./helpers/app-data";
import { ApiInterceptor } from "./helpers/api-intercepter";
import { HTTP_INTERCEPTORS } from "@angular/common/http";
import { NotFoundComponent } from "./components/not-found/not-found.component";
import { EditArticleComponent } from "./components/articles/edit-article/edit-article.component";
import { ViewArticlesComponent } from "./components/articles/view-articles/view-articles.component";
import { ArticleService } from "./services/article.services";
import { PreviewArticleComponent } from "./components/articles/preview-article/preview-article.component";
import { DummyComponent } from "./components/dummy/dummy.component";
import { LatestArticlesComponent } from "./components/articles/latest-articles/latest-articles.component";
import { HttpRequestHandler } from "./helpers/error-handler";
import { ArticleStatsComponent } from "./components/articles/article-stats/article-stats.component";
import { ChartsModule } from "ng2-charts";
import { MyProfileComponentComponent } from "./components/my-profile-component/my-profile-component.component";
import { MenuService } from "./services/menu-service";
import { RouteDefinitions } from "./router";

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    HomeComponent,
    NotFoundComponent,
    EditArticleComponent,
    ViewArticlesComponent,
    PreviewArticleComponent,
    DummyComponent,
    LatestArticlesComponent,
    ArticleStatsComponent,
    MyProfileComponentComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpClientModule,
    ChartsModule,
    RouterModule.forRoot(RouteDefinitions, { useHash: false })
  ],
  providers: [
    SecurityService,
    ArticleService,
    MenuService,
    HttpRequestHandler,
    AuthGuard,
    { provide: "BASE_URL", useFactory: getBaseUrl },
    {
      provide: HTTP_INTERCEPTORS,
      useClass: ApiInterceptor,
      multi: true
    }
  ],
  bootstrap: [AppComponent]
})
export class AppModule {}
