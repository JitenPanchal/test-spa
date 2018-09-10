webpackJsonp([1],{

/***/ "../../../../../src async recursive":
/***/ (function(module, exports) {

function webpackEmptyContext(req) {
	throw new Error("Cannot find module '" + req + "'.");
}
webpackEmptyContext.keys = function() { return []; };
webpackEmptyContext.resolve = webpackEmptyContext;
module.exports = webpackEmptyContext;
webpackEmptyContext.id = "../../../../../src async recursive";

/***/ }),

/***/ "../../../../../src/app/app.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/app.component.html":
/***/ (function(module, exports) {

module.exports = "<router-outlet></router-outlet>\n"

/***/ }),

/***/ "../../../../../src/app/app.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AppComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};

var AppComponent = (function () {
    function AppComponent() {
        this.title = "app";
    }
    return AppComponent;
}());
AppComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: "app-root",
        template: __webpack_require__("../../../../../src/app/app.component.html"),
        styles: [__webpack_require__("../../../../../src/app/app.component.css")]
    })
], AppComponent);

//# sourceMappingURL=app.component.js.map

/***/ }),

/***/ "../../../../../src/app/app.module.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_platform_browser__ = __webpack_require__("../../../platform-browser/@angular/platform-browser.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__angular_forms__ = __webpack_require__("../../../forms/@angular/forms.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__angular_common_http__ = __webpack_require__("../../../common/@angular/common/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__components_login_login_component__ = __webpack_require__("../../../../../src/app/components/login/login.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__services_security_service__ = __webpack_require__("../../../../../src/app/services/security.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__app_component__ = __webpack_require__("../../../../../src/app/app.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__components_home_home_component__ = __webpack_require__("../../../../../src/app/components/home/home.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__services_auth_guard_service__ = __webpack_require__("../../../../../src/app/services/auth-guard.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10__helpers_app_data__ = __webpack_require__("../../../../../src/app/helpers/app-data.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11__helpers_api_intercepter__ = __webpack_require__("../../../../../src/app/helpers/api-intercepter.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_12__components_not_found_not_found_component__ = __webpack_require__("../../../../../src/app/components/not-found/not-found.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_13__components_articles_edit_article_edit_article_component__ = __webpack_require__("../../../../../src/app/components/articles/edit-article/edit-article.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_14__components_articles_view_articles_view_articles_component__ = __webpack_require__("../../../../../src/app/components/articles/view-articles/view-articles.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_15__services_article_services__ = __webpack_require__("../../../../../src/app/services/article.services.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_16__components_articles_preview_article_preview_article_component__ = __webpack_require__("../../../../../src/app/components/articles/preview-article/preview-article.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_17__components_dummy_dummy_component__ = __webpack_require__("../../../../../src/app/components/dummy/dummy.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_18__components_articles_latest_articles_latest_articles_component__ = __webpack_require__("../../../../../src/app/components/articles/latest-articles/latest-articles.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_19__helpers_error_handler__ = __webpack_require__("../../../../../src/app/helpers/error-handler.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_20__components_articles_article_stats_article_stats_component__ = __webpack_require__("../../../../../src/app/components/articles/article-stats/article-stats.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_21_ng2_charts__ = __webpack_require__("../../../../ng2-charts/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_21_ng2_charts___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_21_ng2_charts__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_22__components_my_profile_component_my_profile_component_component__ = __webpack_require__("../../../../../src/app/components/my-profile-component/my-profile-component.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_23__services_menu_service__ = __webpack_require__("../../../../../src/app/services/menu-service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_24__router__ = __webpack_require__("../../../../../src/app/router.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AppModule; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};


























var AppModule = (function () {
    function AppModule() {
    }
    return AppModule;
}());
AppModule = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_1__angular_core__["NgModule"])({
        declarations: [
            __WEBPACK_IMPORTED_MODULE_7__app_component__["a" /* AppComponent */],
            __WEBPACK_IMPORTED_MODULE_5__components_login_login_component__["a" /* LoginComponent */],
            __WEBPACK_IMPORTED_MODULE_8__components_home_home_component__["a" /* HomeComponent */],
            __WEBPACK_IMPORTED_MODULE_12__components_not_found_not_found_component__["a" /* NotFoundComponent */],
            __WEBPACK_IMPORTED_MODULE_13__components_articles_edit_article_edit_article_component__["a" /* EditArticleComponent */],
            __WEBPACK_IMPORTED_MODULE_14__components_articles_view_articles_view_articles_component__["a" /* ViewArticlesComponent */],
            __WEBPACK_IMPORTED_MODULE_16__components_articles_preview_article_preview_article_component__["a" /* PreviewArticleComponent */],
            __WEBPACK_IMPORTED_MODULE_17__components_dummy_dummy_component__["a" /* DummyComponent */],
            __WEBPACK_IMPORTED_MODULE_18__components_articles_latest_articles_latest_articles_component__["a" /* LatestArticlesComponent */],
            __WEBPACK_IMPORTED_MODULE_20__components_articles_article_stats_article_stats_component__["a" /* ArticleStatsComponent */],
            __WEBPACK_IMPORTED_MODULE_22__components_my_profile_component_my_profile_component_component__["a" /* MyProfileComponentComponent */]
        ],
        imports: [
            __WEBPACK_IMPORTED_MODULE_0__angular_platform_browser__["a" /* BrowserModule */],
            __WEBPACK_IMPORTED_MODULE_3__angular_forms__["a" /* FormsModule */],
            __WEBPACK_IMPORTED_MODULE_4__angular_common_http__["a" /* HttpClientModule */],
            __WEBPACK_IMPORTED_MODULE_21_ng2_charts__["ChartsModule"],
            __WEBPACK_IMPORTED_MODULE_2__angular_router__["a" /* RouterModule */].forRoot(__WEBPACK_IMPORTED_MODULE_24__router__["a" /* RouteDefinitions */], { useHash: false })
        ],
        providers: [
            __WEBPACK_IMPORTED_MODULE_6__services_security_service__["a" /* SecurityService */],
            __WEBPACK_IMPORTED_MODULE_15__services_article_services__["a" /* ArticleService */],
            __WEBPACK_IMPORTED_MODULE_23__services_menu_service__["a" /* MenuService */],
            __WEBPACK_IMPORTED_MODULE_19__helpers_error_handler__["a" /* HttpRequestHandler */],
            __WEBPACK_IMPORTED_MODULE_9__services_auth_guard_service__["a" /* AuthGuard */],
            { provide: "BASE_URL", useFactory: __WEBPACK_IMPORTED_MODULE_10__helpers_app_data__["a" /* getBaseUrl */] },
            {
                provide: __WEBPACK_IMPORTED_MODULE_4__angular_common_http__["b" /* HTTP_INTERCEPTORS */],
                useClass: __WEBPACK_IMPORTED_MODULE_11__helpers_api_intercepter__["a" /* ApiInterceptor */],
                multi: true
            }
        ],
        bootstrap: [__WEBPACK_IMPORTED_MODULE_7__app_component__["a" /* AppComponent */]]
    })
], AppModule);

//# sourceMappingURL=app.module.js.map

/***/ }),

/***/ "../../../../../src/app/components/articles/article-stats/article-stats.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/articles/article-stats/article-stats.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"container-fluid p-3\">\n  <div class=\"row\">\n    <div class=\"col-sm-6 col-md-6\">\n      <h2 class=\"d-inline\">Article Statistics</h2>\n      <a class=\"back-link ml-3\" [routerLink]='[\"\", \"articles\" ]'>\n        <i class=\"fa fa-arrow-circle-left mr-1\"></i>back to articles</a>\n    </div>\n    <div class=\"col-sm-6 col-md-6 text-right\">\n    </div>\n  </div>\n  <div class=\"bg-white p-4 mt-2\">\n    <div class=\"container-fluid p-3 w-75\">\n      <canvas baseChart [data]=\"pieChartData\" [labels]=\"pieChartLabels\" [chartType]=\"pieChartType\" (chartHover)=\"chartHovered($event)\"\n        (chartClick)=\"chartClicked($event)\"></canvas>\n    </div>\n  </div>\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/components/articles/article-stats/article-stats.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services_article_services__ = __webpack_require__("../../../../../src/app/services/article.services.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__models_article_article_stat_model__ = __webpack_require__("../../../../../src/app/models/article/article-stat.model.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ArticleStatsComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var ArticleStatsComponent = (function () {
    function ArticleStatsComponent(router, route, articleService) {
        this.router = router;
        this.route = route;
        this.articleService = articleService;
        this.pieChartLabels = ["None ", "Likes", "DisLikes"];
        this.pieChartData = [0, 0, 0];
        this.pieChartType = "pie";
    }
    // events
    ArticleStatsComponent.prototype.chartClicked = function (e) { };
    ArticleStatsComponent.prototype.chartHovered = function (e) { };
    ArticleStatsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.article = new __WEBPACK_IMPORTED_MODULE_3__models_article_article_stat_model__["a" /* ArticleStatResponseModel */]();
        this.paramSubscription = this.route.params.subscribe(function (params) {
            _this.articleId = +params["id"];
            $("#overlay").show();
            if (_this.articleId > 0) {
                _this.articleService
                    .getArticleStats(_this.articleId)
                    .subscribe(function (response) {
                    _this.article = response;
                    _this.pieChartData = [
                        _this.article.noneCount || 0,
                        _this.article.likeCount || 0,
                        _this.article.unLikeCount || 0
                    ];
                    $("#overlay").hide();
                });
            }
            else {
                _this.article = new __WEBPACK_IMPORTED_MODULE_3__models_article_article_stat_model__["a" /* ArticleStatResponseModel */]();
                $("#overlay").hide();
            }
        });
    };
    ArticleStatsComponent.prototype.ngOnDestroy = function () {
        if (this.paramSubscription) {
            this.paramSubscription.unsubscribe();
        }
    };
    return ArticleStatsComponent;
}());
ArticleStatsComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: "app-article-stats",
        template: __webpack_require__("../../../../../src/app/components/articles/article-stats/article-stats.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/articles/article-stats/article-stats.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2__angular_router__["b" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_router__["b" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__angular_router__["c" /* ActivatedRoute */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_router__["c" /* ActivatedRoute */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_1__services_article_services__["a" /* ArticleService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services_article_services__["a" /* ArticleService */]) === "function" && _c || Object])
], ArticleStatsComponent);

var _a, _b, _c;
//# sourceMappingURL=article-stats.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/articles/edit-article/edit-article.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/articles/edit-article/edit-article.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"container-fluid p-3\">\n  <form #articleForm=\"ngForm\">\n    <div class=\"row\">\n      <div class=\"col-sm-6 col-md-6\">\n        <h2 class=\"d-inline\">Edit Article</h2>\n        <a class=\"back-link ml-3\" [routerLink]='[\"\", \"articles\" ]'>\n          <i class=\"fa fa-arrow-circle-left mr-1\"></i>back to articles</a>\n      </div>\n      <div class=\"col-sm-6 col-md-6 text-right\">\n        <div class=\"form-group\">\n          <button type=\"button\" class=\"btn btn-primary\" data-loading-text=\"<i class='fa fa-spinner fa-spin '></i> Save\"\n            (click)=\"onSaveClick($event, false)\" [disabled]=\"!articleForm.valid\">\n            <i class=\"fa fa-save mr-2\"></i>Save</button>\n          <button type=\"button\" class=\"btn btn-primary\" data-loading-text=\"<i class='fa fa-spinner fa-spin '></i> Save &amp; new\"\n            (click)=\"onSaveClick($event, true)\" [disabled]=\"!articleForm.valid\">\n            <i class=\"fa fa-save mr-2\"></i>Save &amp; new</button>\n        </div>\n      </div>\n    </div>\n    <div class=\"bg-white p-4 mt-2\">\n      <div class=\"form-group row\">\n        <label for=\"txtTitle\" class=\"col-sm-2 col-form-label\">Title</label>\n        <div class=\"col-sm-10\">\n          <input name=\"title\" type=\"text\" maxlength=\"255\" #title=\"ngModel\" [(ngModel)]=\"article.title\" class=\"form-control\"\n            placeholder=\"Title\" required autocomplete=\"off\">\n          <p class=\"invalid-label\" *ngIf=\"!title.valid && title.touched\">Title is required</p>\n        </div>\n      </div>\n      <div class=\"form-group row\">\n        <label for=\"txtBody\" class=\"col-sm-2 col-form-label\">Body</label>\n        <div class=\"col-sm-10\">\n          <textarea name=\"body\" #body=\"ngModel\" maxlength=\"50000\" [(ngModel)]=\"article.body\" rows=\"12\" class=\"form-control\"\n            id=\"txtBody\" placeholder=\"Body\" required></textarea>\n          <p class=\"invalid-label\" *ngIf=\"!body.valid && body.touched\">Body is required</p>\n        </div>\n      </div>\n      <div class=\"form-group row\">\n        <label for=\"inputPassword3\" class=\"col-sm-2 col-form-label\">Publish</label>\n        <div class=\"col-sm-10\">\n          <div class=\"form-check\">\n            <input class=\"form-check-input position-static\" name=\"chkPublish\" [(ngModel)]=\"article.isPublished\" type=\"checkbox\"\n              id=\"chkPublish\">\n          </div>\n        </div>\n      </div>\n\n    </div>\n  </form>\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/components/articles/edit-article/edit-article.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__models_article_article_response_model__ = __webpack_require__("../../../../../src/app/models/article/article-response.model.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_article_services__ = __webpack_require__("../../../../../src/app/services/article.services.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__helpers_html_encoder__ = __webpack_require__("../../../../../src/app/helpers/html-encoder.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return EditArticleComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var EditArticleComponent = (function () {
    function EditArticleComponent(router, route, articleService) {
        this.router = router;
        this.route = route;
        this.articleService = articleService;
    }
    EditArticleComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.article = new __WEBPACK_IMPORTED_MODULE_1__models_article_article_response_model__["a" /* ArticleResponseModel */]();
        this.paramSubscription = this.route.params.subscribe(function (params) {
            _this.articleId = +params["id"];
            $("#overlay").show();
            if (_this.articleId > 0) {
                _this.articleService.getArticle(_this.articleId).subscribe(function (response) {
                    _this.article = response;
                    _this.article.body = __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_4__helpers_html_encoder__["b" /* htmlDecode */])(response.body);
                    $("#overlay").hide();
                });
            }
            else {
                _this.article = new __WEBPACK_IMPORTED_MODULE_1__models_article_article_response_model__["a" /* ArticleResponseModel */]();
                $("#overlay").hide();
            }
        });
    };
    EditArticleComponent.prototype.onSaveClick = function (event, saveAndNew) {
        var button = $(event.currentTarget);
        var loadingText = event.currentTarget.dataset.loadingText;
        this.saveArticle(button, loadingText, saveAndNew);
    };
    EditArticleComponent.prototype.saveArticle = function (button, loadingText, saveAndNew) {
        var _this = this;
        if (button.html() !== loadingText) {
            button.data("original-text", button.html());
            button.html(loadingText);
        }
        if (this.articleId <= 0) {
            this.articleService
                .createArticle(this.article)
                .finally(function () {
                button.html(button.data("original-text"));
            })
                .subscribe(function (response) {
                if (saveAndNew) {
                    _this.article = new __WEBPACK_IMPORTED_MODULE_1__models_article_article_response_model__["a" /* ArticleResponseModel */]();
                    _this.router.navigate(["", "add", -1]);
                }
                else {
                    _this.router.navigate(["", "edit", response.id]);
                }
            });
        }
        else {
            this.articleService
                .updateArticle(this.articleId, this.article)
                .finally(function () {
                button.html(button.data("original-text"));
            })
                .subscribe(function (response) {
                _this.router.navigate(["", "edit", response.id]);
            });
        }
    };
    EditArticleComponent.prototype.ngOnDestroy = function () {
        if (this.paramSubscription) {
            this.paramSubscription.unsubscribe();
        }
    };
    return EditArticleComponent;
}());
EditArticleComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: "app-edit-article",
        template: __webpack_require__("../../../../../src/app/components/articles/edit-article/edit-article.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/articles/edit-article/edit-article.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_3__angular_router__["b" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__angular_router__["b" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_3__angular_router__["c" /* ActivatedRoute */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__angular_router__["c" /* ActivatedRoute */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_2__services_article_services__["a" /* ArticleService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_article_services__["a" /* ArticleService */]) === "function" && _c || Object])
], EditArticleComponent);

var _a, _b, _c;
//# sourceMappingURL=edit-article.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/articles/latest-articles/latest-articles.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/articles/latest-articles/latest-articles.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"container-fluid p-3\">\n  <div class=\"row\">\n    <div class=\"col-sm-10 col-md-10\">\n      <h2 class=\"d-inline\">Latest Articles</h2>\n    </div>\n    <div class=\"col-sm-2 col-md-2 text-right\">\n      <div class=\"form-group\">\n        <select class=\"form-control\" (change)=\"onSortByChange($event)\" id=\"exampleFormControlSelect1\">\n          <option value=\"0\">Most Liked</option>\n          <option value=\"1\">Most Recent</option>\n        </select>\n      </div>\n    </div>\n  </div>\n  <div class=\"container-fluid bg-white p-4 mt-2 mb-3\">\n    <h6 class=\"text-right\">\n      {{this.articles.paginationText}}</h6>\n    <div class=\"card-deck mb-2\" *ngFor=\"let article of (this.articles.items ? this.articles.items : []); let i of index;\">\n      <div class=\"card\">\n        <div class=\"card-header\">\n          <div class=\"row\">\n            <div class=\"col-sm-8 col-md-8\">\n              <p class=\"d-inline text-left\">Author: {{article.author}}</p>\n            </div>\n            <div class=\"col-sm-4 col-md-4 text-right\">\n\n              <button type=\"button\" class=\"btn btn-primary align-top w-25\">\n                <i class=\"fas fa-thumbs-up mr-1\"></i>\n                <span class=\"badge badge-light\">{{this.article.likeCount || 0}}</span>\n              </button>\n              <button type=\"button\" class=\"btn btn-primary align-top w-25\">\n                <i class=\"fas fa-thumbs-down mr-1\"></i>\n                <span class=\"badge badge-light\">{{this.article.unLikeCount || 0}}</span>\n              </button>\n\n            </div>\n          </div>\n        </div>\n        <div class=\"card-body\">\n          <h5 class=\"card-title\"><a class=\"nav-link\" [routerLink]='[\"\", \"view\", article.id]'>{{\n              article.title }}</a></h5>\n        </div>\n        <div class=\"card-footer\">\n          <p class=\"d-inline text-right\">Published On: {{ article.publishDate | date:'medium' }}</p>\n        </div>\n      </div>\n    </div>\n    <nav *ngIf=\"this.articles && this.articles.items.length\" aria-label=\"Page navigation example mt-2\">\n      <ul class=\"pagination justify-content-center\">\n        <li class=\"page-item\">\n          <button class=\"page-link\" (click)=\"onGoToPageButtonClick(1)\">\n            <i class=\"fas fa-fast-backward\"></i>\n          </button>\n        </li>\n        <li class=\"page-item\" [ngClass]=\"{disabled: this.articles && !this.articles.hasPreviousPage}\">\n          <button class=\"page-link\" (click)=\"onPreviousButtonClick(this.articles.pageNumber)\">\n            <i class=\"fas fa-step-backward\"></i>\n          </button>\n        </li>\n        <li class=\"page-item\">\n          <button class=\"page-link\">{{this.articles.pageNumber}}</button>\n        </li>\n        <li class=\"page-item\" [ngClass]=\"{disabled: this.articles && !this.articles.hasNextPage}\">\n          <button class=\"page-link\" (click)=\"onNextButtonClick(this.articles.pageNumber)\">\n            <i class=\"fas fa-step-forward\"></i>\n          </button>\n        </li>\n        <li class=\"page-item\">\n          <button class=\"page-link\" (click)=\"onGoToPageButtonClick(this.articles.totalPages)\">\n            <i class=\"fas fa-fast-forward\"></i>\n          </button>\n        </li>\n      </ul>\n    </nav>\n  </div>\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/components/articles/latest-articles/latest-articles.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_article_services__ = __webpack_require__("../../../../../src/app/services/article.services.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__models_article_articles_request_model__ = __webpack_require__("../../../../../src/app/models/article/articles-request.model.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__models_article_get_articles_response_model__ = __webpack_require__("../../../../../src/app/models/article/get-articles-response.model.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LatestArticlesComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var LatestArticlesComponent = (function () {
    function LatestArticlesComponent(router, articleService) {
        this.router = router;
        this.articleService = articleService;
        this.articles = new __WEBPACK_IMPORTED_MODULE_4__models_article_get_articles_response_model__["a" /* GetArticlesResponse */]();
        this.article = new __WEBPACK_IMPORTED_MODULE_3__models_article_articles_request_model__["a" /* ArticlesRequestModel */]();
    }
    LatestArticlesComponent.prototype.ngOnInit = function () {
        this.article.pageSize = 5;
        this.articles.items = [];
        this.article.sortBy = 0;
        this.getArticles(1);
    };
    LatestArticlesComponent.prototype.getArticles = function (pageNumber) {
        this.article.pageNumber = pageNumber;
        this.loadArticles();
    };
    LatestArticlesComponent.prototype.loadArticles = function () {
        var _this = this;
        $("#overlay").show();
        this.articleService.getArticles(this.article).subscribe(function (response) {
            _this.articles = response;
            $("#overlay").hide();
        });
    };
    LatestArticlesComponent.prototype.onSortByChange = function (event) {
        this.article.sortBy = event.target.value;
        this.loadArticles();
    };
    LatestArticlesComponent.prototype.onGoToPageButtonClick = function (pageNumber) {
        this.getArticles(pageNumber);
    };
    LatestArticlesComponent.prototype.onNextButtonClick = function (pageNumber) {
        this.getArticles(++pageNumber);
    };
    LatestArticlesComponent.prototype.onPreviousButtonClick = function (pageNumber) {
        this.getArticles(--pageNumber);
    };
    LatestArticlesComponent.prototype.onAddClick = function ($event) {
        this.router.navigate(["", "add", "-1"]);
    };
    return LatestArticlesComponent;
}());
LatestArticlesComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: "app-latest-articles",
        template: __webpack_require__("../../../../../src/app/components/articles/latest-articles/latest-articles.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/articles/latest-articles/latest-articles.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["b" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["b" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__services_article_services__["a" /* ArticleService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_article_services__["a" /* ArticleService */]) === "function" && _b || Object])
], LatestArticlesComponent);

var _a, _b;
//# sourceMappingURL=latest-articles.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/articles/preview-article/preview-article.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/articles/preview-article/preview-article.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"container-fluid p-3\">\n  <div class=\"row\">\n    <div class=\"col-sm-6 col-md-6\">\n      <h2 class=\"d-inline\">Article #{{this.article.id}}</h2>\n\n      <a *ngIf=\"isBackToLatestArticles\" class=\"back-link ml-3\" [routerLink]='[\"\", \"articles\"]'>\n        <i class=\"fa fa-arrow-circle-left mr-1\"></i>back to articles</a>\n\n      <a *ngIf=\"!isBackToLatestArticles\" class=\"back-link ml-3\" [routerLink]='[\"\", \"latest\"]'>\n        <i class=\"fa fa-arrow-circle-left mr-1\"></i>back to articles</a>\n    </div>\n  </div>\n  <div class=\"bg-white p-4 mt-2\">\n    <div class=\"card\">\n      <div class=\"card-header\">\n        <div class=\"row\">\n          <div class=\"col-sm-8 col-md-8\">\n            {{this.article.title}}\n          </div>\n          <div class=\"col-sm-4 col-md-4 text-right\">\n\n              <button type=\"button\" class=\"btn btn-primary align-top w-25 \" (click)=\"onLikeClick($event)\">\n                <i class=\"fas fa-thumbs-up mr-1\"></i><span class=\"badge badge-light\">{{this.articleStatResponse.likeCount}}</span>\n              </button>\n              <button type=\"button\" class=\"btn btn-primary align-top w-25\" (click)=\"onNotLikeClick($event)\">\n                <i class=\"fas fa-thumbs-down mr-1\"></i>\n                <span class=\"badge badge-light\">{{this.articleStatResponse.unLikeCount}}</span>\n              </button>\n\n          </div>\n        </div>\n      </div>\n      <div class=\"card-body\" [innerHTML]=\"this.article.body\">\n      </div>\n    </div>\n  </div>\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/components/articles/preview-article/preview-article.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__models_article_article_response_model__ = __webpack_require__("../../../../../src/app/models/article/article-response.model.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_article_services__ = __webpack_require__("../../../../../src/app/services/article.services.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__models_article_article_stat_model__ = __webpack_require__("../../../../../src/app/models/article/article-stat.model.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_rxjs_Rx__ = __webpack_require__("../../../../rxjs/Rx.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_rxjs_Rx___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5_rxjs_Rx__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return PreviewArticleComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};






var PreviewArticleComponent = (function () {
    function PreviewArticleComponent(router, route, articleService) {
        this.router = router;
        this.route = route;
        this.articleService = articleService;
    }
    PreviewArticleComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.isBackToLatestArticles = this.router.url.indexOf("preview") >= 0;
        this.article = new __WEBPACK_IMPORTED_MODULE_1__models_article_article_response_model__["a" /* ArticleResponseModel */]();
        this.articleStatResponse = new __WEBPACK_IMPORTED_MODULE_4__models_article_article_stat_model__["a" /* ArticleStatResponseModel */]();
        this.paramSubscription = this.route.params.subscribe(function (params) {
            _this.articleId = +params["id"];
            _this.getArticle();
            _this.refreshArticleStats();
        });
    };
    PreviewArticleComponent.prototype.getArticle = function () {
        var _this = this;
        $("#overlay").show();
        this.articleService.getArticle(this.articleId).subscribe(function (response) {
            _this.article = response;
            $("#overlay").hide();
        }, function (error) {
            $("#overlay").hide();
        });
    };
    PreviewArticleComponent.prototype.refreshArticleStats = function () {
        var _this = this;
        $("#overlay").show();
        this.articleService.getArticleStats(this.articleId).subscribe(function (response) {
            _this.articleStatResponse = response;
            $("#overlay").hide();
        }, function (error) {
            $("#overlay").hide();
        });
    };
    PreviewArticleComponent.prototype.onLikeClick = function (event) {
        var _this = this;
        // TODO - check for employee account
        $("#overlay").show();
        this.articleService
            .likeArticle(this.articleId)
            .catch(function (ex, caught) {
            $("#overlay").hide();
            return __WEBPACK_IMPORTED_MODULE_5_rxjs_Rx__["Observable"].empty();
        })
            .subscribe(function (response) {
            $("#overlay").hide();
            _this.articleStatResponse = response;
        }, function (error) {
            $("#overlay").hide();
            return __WEBPACK_IMPORTED_MODULE_5_rxjs_Rx__["Observable"].empty();
        });
    };
    PreviewArticleComponent.prototype.onNotLikeClick = function (event) {
        var _this = this;
        $("#overlay").show();
        this.articleService
            .unlikeArticle(this.articleId)
            .catch(function (ex, caught) {
            $("#overlay").hide();
            return __WEBPACK_IMPORTED_MODULE_5_rxjs_Rx__["Observable"].empty();
        })
            .subscribe(function (response) {
            $("#overlay").hide();
            _this.articleStatResponse = response;
        }, function (error) {
            $("#overlay").hide();
            return __WEBPACK_IMPORTED_MODULE_5_rxjs_Rx__["Observable"].empty();
        });
    };
    PreviewArticleComponent.prototype.ngOnDestroy = function () {
        if (this.paramSubscription) {
            this.paramSubscription.unsubscribe();
        }
    };
    return PreviewArticleComponent;
}());
PreviewArticleComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: "app-preview-article",
        template: __webpack_require__("../../../../../src/app/components/articles/preview-article/preview-article.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/articles/preview-article/preview-article.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_3__angular_router__["b" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__angular_router__["b" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_3__angular_router__["c" /* ActivatedRoute */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__angular_router__["c" /* ActivatedRoute */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_2__services_article_services__["a" /* ArticleService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_article_services__["a" /* ArticleService */]) === "function" && _c || Object])
], PreviewArticleComponent);

var _a, _b, _c;
//# sourceMappingURL=preview-article.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/articles/view-articles/view-articles.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/articles/view-articles/view-articles.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"container-fluid p-3\">\n  <div class=\"row\">\n    <div class=\"col-sm-6 col-md-6\">\n      <h2 class=\"d-inline\">My Articles</h2>\n    </div>\n    <div class=\"col-sm-6 col-md-6 text-right\">\n      <div class=\"form-group\">\n        <select class=\"form-control d-inline w-25\" (change)=\"onSortByChange($event)\" id=\"exampleFormControlSelect1\">\n          <option value=\"0\">Most Liked</option>\n          <option value=\"1\">Most Recent</option>\n        </select>\n        <button type=\"button\" class=\"btn btn-primary\" (click)=\"onAddClick($event)\">\n          <i class=\"fa fa-plus-square  mr-2\"></i>Add new</button>\n      </div>\n    </div>\n  </div>\n  <div class=\"container-fluid bg-white p-4 mt-2 mb-2\">\n      <h6 class=\"text-right\">\n          {{this.articles.paginationText}}</h6>\n    <div class=\"table-responsive\">\n      <table class=\"table table-sm table-hover \">\n        <thead>\n          <tr role=\"row\">\n            <th scope=\"col\" style=\"width: 5%;\" class=\"text-center\">#</th>\n            <th scope=\"col\" style=\"width: 2%;\" class=\"text-center\"></th>\n            <th scope=\"col\" style=\"width: 2%;\" class=\"text-center\"></th>\n            <th scope=\"col\" style=\"width: 48%;\" class=\"text-center\">Title</th>\n            <th scope=\"col\" style=\"width: 15%;\" class=\"text-center\"></th>\n            <th scope=\"col\" style=\"width: 18%;\" class=\"text-center\">Publish Date</th>\n            <th scope=\"col\" style=\"width: 10%;\" class=\"text-center\"></th>\n          </tr>\n        </thead>\n        <tbody>\n          <tr *ngFor=\"let article of (this.articles.items ? this.articles.items : [])\">\n            <td class=\"text-center\">\n              {{ article.id }}\n            </td>\n            <td class=\"text-center\" title=\"Preview Article\">\n              <a class=\"nav-link\" [routerLink]='[\"\", \"preview\", article.id ]'><i class=\"fas fa-book-open\"></i></a>\n            </td>\n            <td class=\"text-center\" title=\"Article Statistics\">\n              <a class=\"nav-link\" [routerLink]='[\"\", \"report\", article.id ]'>\n                <i class=\"fas fa-chart-pie\"></i></a>\n            </td>\n            <td>\n              <a class=\"nav-link\" [routerLink]='[\"\", \"edit\", article.id ]'>{{\n                article.title }}</a>\n            </td>\n            <!-- <td class=\"text-center\">\n              {{ article.author }}\n            </td> -->\n            <td class=\"text-center\">\n              <div class=\"btn-group\" role=\"group\" aria-label=\"Basic example\">\n                <button type=\"button\" class=\"page-link mr-1\">\n                  <i class=\"fas fa-thumbs-up\"></i><span class=\"ml-2\">{{this.article.likeCount || 0}}</span>\n                </button>\n                <button type=\"button\" class=\"page-link\">\n                  <i class=\"fas fa-thumbs-down\"></i><span class=\"ml-2\">{{this.article.unLikeCount || 0}}</span>\n                </button>\n              </div>\n            </td>\n            <td>\n              {{ article.publishDate | date:'medium' }}\n            </td>\n            <td class=\"text-center\">\n              <button *ngIf=\"this.article.isPublished\" class=\"page-link\" (click)=\"onDeleteButtonClick(this.article.id)\">\n                <i class=\"fas fa-trash\"></i> Remove\n              </button>\n              <button *ngIf=\"!this.article.isPublished\" class=\"page-link\" (click)=\"onPublishButtonClick(this.article.id)\">\n                <i class=\"fas fa-check\"></i> Publish\n              </button>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n    </div>\n  </div>\n  <nav *ngIf=\"this.articles && this.articles.items.length\" aria-label=\"Page navigation example mt-2\">\n    <ul class=\"pagination justify-content-center\">\n      <li class=\"page-item\">\n        <button class=\"page-link\" (click)=\"onGoToPageButtonClick(1)\">\n          <i class=\"fas fa-fast-backward\"></i>\n        </button>\n      </li>\n      <li class=\"page-item\" [ngClass]=\"{disabled: this.articles && !this.articles.hasPreviousPage}\">\n        <button class=\"page-link\" (click)=\"onPreviousButtonClick(this.articles.pageNumber)\">\n          <i class=\"fas fa-step-backward\"></i>\n        </button>\n      </li>\n      <li class=\"page-item\">\n        <button class=\"page-link\">{{this.articles.pageNumber}}</button>\n      </li>\n      <li class=\"page-item\" [ngClass]=\"{disabled: this.articles && !this.articles.hasNextPage}\">\n        <button class=\"page-link\" (click)=\"onNextButtonClick(this.articles.pageNumber)\">\n          <i class=\"fas fa-step-forward\"></i>\n        </button>\n      </li>\n      <li class=\"page-item\">\n        <button class=\"page-link\" (click)=\"onGoToPageButtonClick(this.articles.totalPages)\">\n          <i class=\"fas fa-fast-forward\"></i>\n        </button>\n      </li>\n    </ul>\n  </nav>\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/components/articles/view-articles/view-articles.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_article_services__ = __webpack_require__("../../../../../src/app/services/article.services.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__models_article_articles_request_model__ = __webpack_require__("../../../../../src/app/models/article/articles-request.model.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__models_article_get_articles_response_model__ = __webpack_require__("../../../../../src/app/models/article/get-articles-response.model.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ViewArticlesComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var ViewArticlesComponent = (function () {
    function ViewArticlesComponent(router, articleService) {
        this.router = router;
        this.articleService = articleService;
        this.articles = new __WEBPACK_IMPORTED_MODULE_4__models_article_get_articles_response_model__["a" /* GetArticlesResponse */]();
        this.article = new __WEBPACK_IMPORTED_MODULE_3__models_article_articles_request_model__["a" /* ArticlesRequestModel */]();
    }
    ViewArticlesComponent.prototype.ngOnInit = function () {
        this.article.pageSize = 5;
        this.articles.items = [];
        this.getArticles(1);
    };
    ViewArticlesComponent.prototype.getArticles = function (pageNumber) {
        var _this = this;
        this.article.pageNumber = pageNumber;
        $("#overlay").show();
        this.articleService.getMyArticles(this.article).subscribe(function (response) {
            _this.articles = response;
            $("#overlay").hide();
        });
    };
    ViewArticlesComponent.prototype.onGoToPageButtonClick = function (pageNumber) {
        this.getArticles(pageNumber);
    };
    ViewArticlesComponent.prototype.onNextButtonClick = function (pageNumber) {
        this.getArticles(++pageNumber);
    };
    ViewArticlesComponent.prototype.onPreviousButtonClick = function (pageNumber) {
        this.getArticles(--pageNumber);
    };
    ViewArticlesComponent.prototype.onAddClick = function ($event) {
        this.router.navigate(["", "add", "-1"]);
    };
    ViewArticlesComponent.prototype.onSortByChange = function (event) {
        this.article.sortBy = event.target.value;
        this.getArticles(1);
    };
    ViewArticlesComponent.prototype.onDeleteButtonClick = function (articleId) {
        var _this = this;
        if (window.confirm("Are you sure you want to remove/unpublish this article ?")) {
            this.articleService
                .unpublishArticle(articleId)
                .subscribe(function (response) {
                _this.getArticles(_this.article.pageNumber);
            });
        }
    };
    ViewArticlesComponent.prototype.onPublishButtonClick = function (articleId) {
        var _this = this;
        this.articleService.publishArticle(articleId).subscribe(function (response) {
            _this.getArticles(_this.article.pageNumber);
        });
    };
    return ViewArticlesComponent;
}());
ViewArticlesComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: "app-view-articles",
        template: __webpack_require__("../../../../../src/app/components/articles/view-articles/view-articles.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/articles/view-articles/view-articles.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["b" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["b" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__services_article_services__["a" /* ArticleService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_article_services__["a" /* ArticleService */]) === "function" && _b || Object])
], ViewArticlesComponent);

var _a, _b;
//# sourceMappingURL=view-articles.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/dummy/dummy.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/dummy/dummy.component.html":
/***/ (function(module, exports) {

module.exports = "<!-- <div class=\"container-fluid p-3\">\n  <div class=\"row\">\n    <div class=\"col-sm-6 col-md-6\">\n      <h2 class=\"d-inline\">{{this.title}}</h2>\n    </div>\n  </div>\n  <div class=\"bg-white p-4 mt-2\">\n    <div class=\"card\">\n      <div class=\"card-header\">\n        <div class=\"row\">\n          <div class=\"col-sm-9 col-md-9\">\n            Title\n          </div>\n        </div>\n      </div>\n      <div class=\"card-body\">\n        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's\n        standard dummy\n        text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\n        specimen\n        book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining\n        essentially\n        unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,\n        and\n        more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n      </div>\n    </div>\n  </div>\n</div>\n\n -->\n\n\n<div class=\"container-fluid p-3\">\n  <div class=\"row\">\n    <div class=\"col-sm-6 col-md-6\">\n      <h2 class=\"d-inline\">{{this.title}}</h2>\n    </div>\n    <div class=\"col-sm-6 col-md-6 text-right\">\n    </div>\n  </div>\n  <div class=\"container-fluid bg-white p-4 mt-2 mb-2\">\n    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's\n      standard dummy\n      text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\n      specimen\n      book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining\n      essentially\n      unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,\n      and\n      more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's\n      standard dummy\n      text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\n      specimen\n      book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining\n      essentially\n      unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,\n      and\n      more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been\n      the industry's\n      standard dummy\n      text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\n      specimen\n      book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining\n      essentially\n      unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,\n      and\n      more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n  </div>\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/components/dummy/dummy.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return DummyComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var DummyComponent = (function () {
    function DummyComponent(router, route) {
        this.router = router;
        this.route = route;
    }
    DummyComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.paramSubscription = this.route.params.subscribe(function (params) {
            _this.title = params["title"];
        });
    };
    DummyComponent.prototype.ngOnDestroy = function () {
        if (this.paramSubscription) {
            this.paramSubscription.unsubscribe();
        }
    };
    return DummyComponent;
}());
DummyComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: "app-dummy",
        template: __webpack_require__("../../../../../src/app/components/dummy/dummy.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/dummy/dummy.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["b" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["b" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* ActivatedRoute */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* ActivatedRoute */]) === "function" && _b || Object])
], DummyComponent);

var _a, _b;
//# sourceMappingURL=dummy.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/home/home.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "#content {\r\n  background-color: #ecf0f5 !important;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/home/home.component.html":
/***/ (function(module, exports) {

module.exports = "<div id=\"app\">\r\n  <div>\r\n    <div class=\"position-absolute app-alert\">\r\n      <div class=\"alert alert-warning fade alert-dismissible app-alert-content\" role=\"alert\">\r\n        <strong>Holy guacamole!</strong> You should check in on some of those fields below.\r\n        <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\r\n          <span aria-hidden=\"true\">&times;</span>\r\n        </button>\r\n      </div>\r\n    </div>\r\n    <nav class=\"navbar fixed-top header\">\r\n      <span class=\"col-md-2 col-sm-2 brand-title text-nowrap pl-0 ml-0\">\r\n        <!-- <i class=\"fab fa-slack fa-lg brand-icon pr-2\"></i> -->\r\n        <i class=\"fab fa-readme fa-lg brand-icon pr-2\"></i>KPMG News\r\n      </span>\r\n      <div class=\"col-md-7 col-sm-7\">\r\n        <button type=\"button\" class=\"btn btn-default bg-light rounded-0\" id=\"sidebarCollapse\" (click)=\"onSideBarButtonClick()\">\r\n          <i class=\"fa fa-bars\"></i>\r\n        </button>\r\n      </div>\r\n      <div class=\"col-md-3 col-sm-3\">\r\n        <a class=\"nav-link text-white float-right pr-0 d-inline\" href=\"javascript:void(0)\" (click)=\"onLogoutClick()\"> <i class=\"fas fa-sign-out-alt mr-1\"></i>Logout</a>\r\n        <a class=\"nav-link text-white float-right pr-0 d-inline\" href=\"javascript:void(0)\">Welcome {{this.username}} </a>\r\n      </div>\r\n    </nav>\r\n    <!-- <nav id=\"sidebar\" class=\"hidden-xs-down bg-faded sidebar pr-3\" :class=\"{ active: isHidden }\">\r\n      <ul class=\"navbar-nav\">\r\n        <li class=\"nav-item\">\r\n          <div class=\"input-group m-2 search-bar\">\r\n            <input class=\"form-control p-1 mt-1 side-bar-search-box\" v-model=\"searchText\" (input)=\"onSearchInput()\" type=\"text\" placeholder=\"Search\">\r\n            <span class=\"input-group-append\">\r\n              <button class=\"btn bg-dark mt-1\" type=\"button\">\r\n                <i class=\"fa fa-search text-white\"></i>\r\n              </button>\r\n            </span>\r\n            <ul class=\"list-group search-suggestion-box\" :class=\"{'d-none':!(suggestionItems && suggestionItems.length)}\" id=\"suggestionBox\">\r\n              <li class=\"list-group-item text-dark search-suggestion-box-item\" *ngFor=\"let suggestionItem of suggestionItems\">\r\n                <a (click.stop)=\"onSuggestionItemClicked(suggestionItem)\" class=\"nav-link\">\r\n                  <p class=\"mb-1\">{{suggestionItem.text}}</p>\r\n                  <small class=\"text-muted\">{{suggestionItem.parentText}}</small>\r\n                </a>\r\n              </li>\r\n            </ul>\r\n          </div>\r\n        </li>\r\n        <li class=\"nav-item ml-2\" *ngFor=\"let menuItem of this.menuItems; let i of index;\">\r\n          <a href=\"#\" *ngIf=\"menuItem.items && menuItem.items.length\" class=\"nav-link collapsed text-white\" data-toggle=\"collapse\"\r\n           data-target=\"something\" aria-expanded=\"true\">\r\n            <i class=\"mr-2\" [class]=\"menuItem.icon\"></i> {{menuItem.text}}\r\n            <i *ngIf=\"menuItem.items && menuItem.items.length\" class=\"fa fa-angle-left ml-2\"></i>\r\n          </a>\r\n          <a *ngIf=\"menuItem.items && menuItem.items.length === 0\" [routerLink]=\"['', { outlets: {'item': ['home2'] }}]\"\r\n          class=\"nav-link collapsed text-white\">\r\n            <i class=\"mr-2\" [class]=\"menuItem.icon\"></i> {{menuItem.text}}</a>\r\n          <div class=\"navbar-collapse collapse\" id=\"something\" *ngIf=\"menuItem.items\">\r\n            <ul class=\"navbar-nav ml-2\">\r\n              <li class=\"nav-item\" *ngFor=\"let item of menuItem.items\">\r\n                <a class=\"nav-link text-white\" [routerLink]=\"['', { outlets: {'item': ['home2'] }}]\">\r\n                  <i class=\"far fa-dot-circle mr-2\"></i>{{item.text}}\r\n                </a>\r\n              </li>\r\n            </ul>\r\n          </div>\r\n        </li>\r\n      </ul>\r\n    </nav> -->\r\n    <div>\r\n      <nav id=\"sidebar\" class=\"hidden-xs-down bg-faded sidebar pr-3\" [ngClass]=\"{active:isHidden}\">\r\n        <ul class=\"navbar-nav\">\r\n          <li class=\"nav-item\">\r\n            <div class=\"input-group m-2 search-bar\">\r\n              <input class=\"form-control p-1 mt-1 side-bar-search-box\" v-model=\"searchText\" (input)=\"onSearchInput($event)\"\r\n                (blur)=\"onBlurSearchInput()\" type=\"text\" placeholder=\"Search\">\r\n              <span class=\"input-group-append\">\r\n                <button class=\"btn bg-dark mt-1\" type=\"button\">\r\n                  <i class=\"fa fa-search text-white\"></i>\r\n                </button>\r\n              </span>\r\n              <ul class=\"list-group search-suggestion-box\" id=\"suggestionBox\" [ngClass]=\"{'d-none': !(suggestionItems && suggestionItems.length)}\">\r\n                <li class=\"list-group-item text-dark search-suggestion-box-item\" *ngFor=\"let suggestionItem of suggestionItems\"\r\n                  (click)=\"onSuggestionItemClicked(suggestionItem)\">\r\n                  <a class=\"nav-link\">\r\n                    <p class=\"mb-1\">{{ suggestionItem.text }}</p>\r\n                    <small class=\"text-muted\">{{suggestionItem.parentText}}</small>\r\n                  </a>\r\n                </li>\r\n              </ul>\r\n            </div>\r\n          </li>\r\n          <li class=\"nav-item ml-2\">\r\n            <a [routerLink]=\"['', 'latest']\" class=\"nav-link collapsed text-white\"\r\n              aria-expanded=\"true\">\r\n              <i class=\"far fa-newspaper mr-2\"></i>Latest Articles\r\n            </a>\r\n          </li>\r\n          <li class=\"nav-item ml-2\" *ngIf=\"isHideAdminSection\">\r\n            <a href=\"#\" class=\"nav-link collapsed text-white\" data-toggle=\"collapse\" data-target=\"#navbarNav\"\r\n              aria-expanded=\"true\">\r\n              <i class=\"fas fa-cog mr-2\"></i>Administration\r\n              <i class=\"fa fa-angle-left ml-2\"></i>\r\n            </a>\r\n            <div class=\"navbar-collapse collapse\" id=\"navbarNav\">\r\n              <ul class=\"navbar-nav ml-2\">\r\n                <li class=\"nav-item\">\r\n                  <a class=\"nav-link text-white\" [routerLink]=\"['', 'articles']\">\r\n                    <i class=\"far fa-dot-circle  mr-2\"></i>My Articles</a>\r\n                </li>\r\n                <li class=\"nav-item\">\r\n                  <a class=\"nav-link text-white\" [routerLink]=\"['', 'dummy', 'Regions']\">\r\n                    <i class=\"far fa-dot-circle mr-2\"></i>Regions</a>\r\n                </li>\r\n                <li class=\"nav-item\">\r\n                  <a class=\"nav-link text-white\" [routerLink]=\"['', 'dummy','Countries']\">\r\n                    <i class=\"far fa-dot-circle mr-2\"></i>Countries</a>\r\n                </li>\r\n              </ul>\r\n            </div>\r\n          </li>\r\n          <li class=\"nav-item ml-2\">\r\n            <a href=\"#\" class=\"nav-link collapsed text-white\" data-toggle=\"collapse\" data-target=\"#navbarNavServices\"\r\n              aria-expanded=\"true\">\r\n              <i class=\"fab fa-servicestack mr-2\"></i>Services\r\n              <i class=\"fa fa-angle-left ml-2\"></i>\r\n            </a>\r\n            <div class=\"navbar-collapse collapse\" id=\"navbarNavServices\">\r\n              <ul class=\"navbar-nav ml-2\">\r\n                <li class=\"nav-item\">\r\n                  <a class=\"nav-link text-white\" [routerLink]=\"['', 'dummy', 'Audit']\">\r\n                    <i class=\"far fa-dot-circle  mr-2\"></i>Audit</a>\r\n                </li>\r\n                <li class=\"nav-item\">\r\n                  <a class=\"nav-link text-white\" [routerLink]=\"['', 'dummy', 'Tax']\">\r\n                    <i class=\"far fa-dot-circle mr-2\"></i>Tax</a>\r\n                </li>\r\n                <li class=\"nav-item\">\r\n                  <a class=\"nav-link text-white\" [routerLink]=\"['', 'dummy', 'Consulting']\">\r\n                    <i class=\"far fa-dot-circle mr-2\"></i>Consulting</a>\r\n                </li>\r\n                <li class=\"nav-item\">\r\n                  <a class=\"nav-link text-white\" [routerLink]=\"['', 'dummy', 'Pension']\">\r\n                    <i class=\"far fa-dot-circle mr-2\"></i>Pension</a>\r\n                </li>\r\n              </ul>\r\n            </div>\r\n          </li>\r\n          <li class=\"nav-item ml-2\">\r\n            <a href=\"#\" class=\"nav-link collapsed text-white\" [routerLink]=\"['', 'dummy', 'About Us']\">\r\n              <i class=\"fas fa-info-circle mr-2\"></i>About Us\r\n            </a>\r\n          </li>\r\n        </ul>\r\n      </nav>\r\n      <div id=\"content\" [ngClass]=\"{active:isHidden}\">\r\n        <div class=\"overlay\" id=\"overlay\" style=\"display: none;\">\r\n          <i class=\"fa fa-spinner fa-spin fa-5x overlay-content\"></i>\r\n        </div>\r\n        <router-outlet></router-outlet>\r\n      </div>\r\n    </div>\r\n  </div>\r\n  <div>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/home/home.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services_security_service__ = __webpack_require__("../../../../../src/app/services/security.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__node_modules_angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__services_menu_service__ = __webpack_require__("../../../../../src/app/services/menu-service.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return HomeComponent; });
/* unused harmony export SuggestionItem */
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var HomeComponent = (function () {
    function HomeComponent(securityService, menuService, router) {
        this.securityService = securityService;
        this.menuService = menuService;
        this.router = router;
        this.isHidden = false;
    }
    HomeComponent.prototype.ngOnInit = function () {
        this.menuItems = this.menuService.getMenuItems();
        this.isHideAdminSection = this.securityService.isCurrentUserPublisher();
        this.username = this.securityService.getUserName();
    };
    HomeComponent.prototype.onSideBarButtonClick = function () {
        this.isHidden = !this.isHidden;
    };
    HomeComponent.prototype.onLogoutClick = function () {
        this.securityService.clearAuthenticatedUser();
        this.router.navigate(["/login"]);
    };
    HomeComponent.prototype.onSearchInput = function (event) {
        var searchText = event.target.value;
        this.suggestionItems = [];
        if (!searchText) {
            return;
        }
        for (var _i = 0, _a = this.menuItems; _i < _a.length; _i++) {
            var menuItem = _a[_i];
            for (var _b = 0, _c = menuItem.items; _b < _c.length; _b++) {
                var item = _c[_b];
                if (item.text.toLowerCase().startsWith(searchText.toLowerCase())) {
                    this.suggestionItems.push(item);
                }
            }
        }
    };
    HomeComponent.prototype.onSuggestionItemClicked = function (suggestionItem) {
    };
    HomeComponent.prototype.onclick = function (event) { };
    HomeComponent.prototype.onBlurSearchInput = function () {
        this.suggestionItems = [];
    };
    return HomeComponent;
}());
HomeComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: "app-home",
        template: __webpack_require__("../../../../../src/app/components/home/home.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/home/home.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__services_security_service__["a" /* SecurityService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services_security_service__["a" /* SecurityService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_3__services_menu_service__["a" /* MenuService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__services_menu_service__["a" /* MenuService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_2__node_modules_angular_router__["b" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__node_modules_angular_router__["b" /* Router */]) === "function" && _c || Object])
], HomeComponent);

var SuggestionItem = (function () {
    function SuggestionItem(text) {
        this.text = text;
    }
    return SuggestionItem;
}());

var _a, _b, _c;
//# sourceMappingURL=home.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/login/login.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".back {\r\n  background: #e2e2e2;\r\n  width: 100%;\r\n  position: absolute;\r\n  top: 0;\r\n  bottom: 0;\r\n}\r\n\r\n.div-center {\r\n  width: 400px;\r\n  height: 400px;\r\n  background-color: #fff;\r\n  position: absolute;\r\n  left: 0;\r\n  right: 0;\r\n  top: 0;\r\n  bottom: 0;\r\n  margin: auto;\r\n  max-width: 100%;\r\n  max-height: 100%;\r\n  overflow: auto;\r\n  padding: 1em 2em;\r\n  border-bottom: 2px solid #ccc;\r\n  display: table;\r\n}\r\n\r\ndiv.content {\r\n  display: table-cell;\r\n  vertical-align: middle;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/login/login.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"back\">\n  <div class=\"div-center\">\n    <div class=\"content\">\n      <div class=\"container\">\n        <h3 class=\"text-center\">\n          <i class=\"far fa-user mr-2\"></i>Login</h3>\n        <hr />\n        <form #loginForm=\"ngForm\" autocomplete=\"off\">\n          <div class=\"form-group\">\n            <label for=\"inputUserName\">Username</label>\n            <input list=\"usernames\" name=\"username\" type=\"text\" #username=\"ngModel\" [(ngModel)]=\"loginRequestModel.username\"\n              class=\"form-control\" placeholder=\"username\" required autocomplete=\"off\">\n            <p class=\"invalid-label\" *ngIf=\"!username.valid && username.touched\">Username is required</p>\n            <datalist id=\"usernames\">\n              <option value=\"employee_\">\n              <option value=\"publisher_\">\n            </datalist>\n          </div>\n          <div class=\"form-group\">\n            <label for=\"inputPassword\">Password</label>\n            <input name=\"password\" type=\"password\" #password=\"ngModel\" (keypress)=\"onTextBoxKeyPress($event)\"\n              [(ngModel)]=\"loginRequestModel.password\" password=\"password\" required class=\"form-control\" placeholder=\"password\"\n              autocomplete=\"off\" />\n            <p class=\"invalid-label\" *ngIf=\"!password.valid && password.touched\">Password is required</p>\n          </div>\n          <div class=\"form-group\">\n            <button type=\"button\" (click)=\"onSubmit($event)\" [disabled]=\"!loginForm.valid\" data-loading-text=\"<i class='fa fa-spinner fa-spin '></i> Login\"\n              class=\"btn btn-primary\">Login</button>\n            <button type=\"button\" name=\"resetButton\" class=\"btn btn-link\">Reset Password</button>\n          </div>\n          <p *ngIf=\"!loginResponseModel.isSuccess\" class=\"invalid-label text-center font-weight-bold\">{{loginResponseModel.message}}</p>\n          <hr />\n        </form>\n      </div>\n    </div>\n  </div>\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/components/login/login.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services_security_service__ = __webpack_require__("../../../../../src/app/services/security.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_forms__ = __webpack_require__("../../../forms/@angular/forms.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__models_login_login_request_model__ = __webpack_require__("../../../../../src/app/models/login/login-request.model.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__models_login_login_response_model__ = __webpack_require__("../../../../../src/app/models/login/login-response.model.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LoginComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};






var LoginComponent = (function () {
    function LoginComponent(securityService, router) {
        this.securityService = securityService;
        this.router = router;
        this.loginRequestModel = new __WEBPACK_IMPORTED_MODULE_3__models_login_login_request_model__["a" /* LoginRequestModel */]();
        this.loginResponseModel = new __WEBPACK_IMPORTED_MODULE_4__models_login_login_response_model__["a" /* LoginResponseModel */]();
    }
    LoginComponent.prototype.ngOnInit = function () { };
    LoginComponent.prototype.onTextBoxKeyPress = function (event) {
        // if (event.which === 13) {
        //   console.log(event);
        // }
    };
    LoginComponent.prototype.onSubmit = function (event) {
        var _this = this;
        var buttonLogin = $(event.currentTarget);
        var loadingText = event.currentTarget.dataset.loadingText;
        if (buttonLogin.html() !== loadingText) {
            buttonLogin.data("original-text", buttonLogin.html());
            buttonLogin.html(loadingText);
        }
        this.securityService
            .validateUser(this.loginRequestModel)
            .subscribe(function (response) {
            buttonLogin.html(buttonLogin.data("original-text"));
            _this.loginResponseModel = response;
            if (response.isSuccess) {
                _this.router.navigate(["", "latest"], { replaceUrl: true });
            }
        });
    };
    return LoginComponent;
}());
__decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["ViewChild"])("loginForm"),
    __metadata("design:type", typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2__angular_forms__["b" /* NgForm */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_forms__["b" /* NgForm */]) === "function" && _a || Object)
], LoginComponent.prototype, "loginForm", void 0);
LoginComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: "app-login",
        template: __webpack_require__("../../../../../src/app/components/login/login.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/login/login.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1__services_security_service__["a" /* SecurityService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services_security_service__["a" /* SecurityService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_5__angular_router__["b" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_5__angular_router__["b" /* Router */]) === "function" && _c || Object])
], LoginComponent);

var _a, _b, _c;
//# sourceMappingURL=login.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/my-profile-component/my-profile-component.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/my-profile-component/my-profile-component.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"container-fluid p-3\">\n  <form>\n    <div class=\"row\">\n      <div class=\"col-sm-6 col-md-6\">\n        <h2 class=\"d-inline\">My Account</h2>\n        <a class=\"back-link ml-3\" [routerLink]='[\"\", \"articles\"]'>\n          <i class=\"fa fa-arrow-circle-left mr-1\"></i>back to articles</a>\n      </div>\n      <div class=\"col-sm-6 col-md-6 text-right\">\n      </div>\n    </div>\n    <div class=\"bg-white p-4 mt-2\">\n      <div class=\"form-group row\">\n        <label for=\"txtTitle\" class=\"col-sm-2 col-form-label\">Name</label>\n        <div class=\"col-sm-10\">\n          <input name=\"title\" type=\"text\" maxlength=\"255\" class=\"form-control\" placeholder=\"Title\" required\n            autocomplete=\"off\">\n        </div>\n      </div>\n      <div class=\"form-group row\">\n        <label for=\"emailadd\" class=\"col-sm-2 col-form-label\">Email Address</label>\n        <div class=\"col-sm-10\">\n          <input name=\"emailadd\" type=\"text\" maxlength=\"255\" class=\"form-control\" placeholder=\"Title\" required\n            autocomplete=\"off\">\n        </div>\n      </div>\n      <div class=\"form-group row\">\n        <label for=\"inputPassword3\" class=\"col-sm-2 col-form-label\">Publisher</label>\n        <div class=\"col-sm-10\">\n          <div class=\"form-check\">\n            <input class=\"form-check-input position-static\" name=\"chkPublish\" type=\"checkbox\" id=\"chkPublish\">\n          </div>\n        </div>\n      </div>\n\n    </div>\n  </form>\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/components/my-profile-component/my-profile-component.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return MyProfileComponentComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};

var MyProfileComponentComponent = (function () {
    function MyProfileComponentComponent() {
    }
    MyProfileComponentComponent.prototype.ngOnInit = function () { };
    return MyProfileComponentComponent;
}());
MyProfileComponentComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: "app-my-profile-component",
        template: __webpack_require__("../../../../../src/app/components/my-profile-component/my-profile-component.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/my-profile-component/my-profile-component.component.css")]
    }),
    __metadata("design:paramtypes", [])
], MyProfileComponentComponent);

//# sourceMappingURL=my-profile-component.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/not-found/not-found.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".back {\r\n  background: #e2e2e2;\r\n  width: 100%;\r\n  position: absolute;\r\n  top: 0;\r\n  bottom: 0;\r\n}\r\n\r\n.div-center {\r\n  width: 400px;\r\n  height: 400px;\r\n  background-color: #fff;\r\n  position: absolute;\r\n  left: 0;\r\n  right: 0;\r\n  top: 0;\r\n  bottom: 0;\r\n  margin: auto;\r\n  max-width: 100%;\r\n  max-height: 100%;\r\n  overflow: auto;\r\n  padding: 1em 2em;\r\n  border-bottom: 2px solid #ccc;\r\n  display: table;\r\n}\r\n\r\ndiv.content {\r\n  display: table-cell;\r\n  vertical-align: middle;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/not-found/not-found.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"back\">\n  <div class=\"div-center\">\n    <div class=\"content\">\n      <div class=\"container\">\n        <div class=\"error-template\">\n          <h1>\n            Oops!</h1>\n          <h2>\n            404 Not Found</h2>\n          <div class=\"error-details\">\n            Sorry, an error has occured, Requested page not found!\n          </div>\n          <p class=\"mt-5\">\n            <a [routerLink]=\"['', 'latest']\" class=\"btn btn-primary btn-lg\"><span class=\"glyphicon glyphicon-home\"></span>\n              Take Me Home </a>\n          </p>\n        </div>\n      </div>\n    </div>\n  </div>\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/components/not-found/not-found.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return NotFoundComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};

var NotFoundComponent = (function () {
    function NotFoundComponent() {
    }
    NotFoundComponent.prototype.ngOnInit = function () { };
    return NotFoundComponent;
}());
NotFoundComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: "app-not-found",
        template: __webpack_require__("../../../../../src/app/components/not-found/not-found.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/not-found/not-found.component.css")]
    }),
    __metadata("design:paramtypes", [])
], NotFoundComponent);

//# sourceMappingURL=not-found.component.js.map

/***/ }),

/***/ "../../../../../src/app/helpers/api-intercepter.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__app_data__ = __webpack_require__("../../../../../src/app/helpers/app-data.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ApiInterceptor; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var ApiInterceptor = (function () {
    function ApiInterceptor() {
    }
    ApiInterceptor.prototype.intercept = function (request, next) {
        var baseUrl = __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_1__app_data__["a" /* getBaseUrl */])();
        var apiReq = request.clone({ url: baseUrl + "/" + request.url });
        return next.handle(apiReq);
    };
    return ApiInterceptor;
}());
ApiInterceptor = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Injectable"])(),
    __metadata("design:paramtypes", [])
], ApiInterceptor);

//# sourceMappingURL=api-intercepter.js.map

/***/ }),

/***/ "../../../../../src/app/helpers/app-data.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (immutable) */ __webpack_exports__["a"] = getBaseUrl;
function getBaseUrl() {
    return document.getElementsByTagName("base")[0].href;
}
//# sourceMappingURL=app-data.js.map

/***/ }),

/***/ "../../../../../src/app/helpers/error-handler.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_rxjs_Rx__ = __webpack_require__("../../../../rxjs/Rx.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_rxjs_Rx___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_rxjs_Rx__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return HttpRequestHandler; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};


var HttpRequestHandler = (function () {
    function HttpRequestHandler() {
    }
    HttpRequestHandler.prototype.extractData = function (res) {
        var body = res.json();
        return body || {};
    };
    HttpRequestHandler.prototype.handleError = function (error) {
        var errorMessages;
        errorMessages = "";
        if (error.error) {
            if (error.error.validationErrorMessages) {
                var validationErrorMessages = error.error.validationErrorMessages;
                if (validationErrorMessages) {
                    for (var property in validationErrorMessages) {
                        if (property) {
                            errorMessages = validationErrorMessages[property] + "\n";
                        }
                    }
                }
            }
            if (error.error.errorMessages) {
                for (var _i = 0, _a = error.error.errorMessages; _i < _a.length; _i++) {
                    var errorMessage = _a[_i];
                    errorMessages = errorMessage + "\n";
                }
            }
        }
        else {
            errorMessages = error.message ? error.message : error.toString();
        }
        if (errorMessages) {
            alert(errorMessages);
        }
        return __WEBPACK_IMPORTED_MODULE_1_rxjs_Rx__["Observable"].empty();
    };
    return HttpRequestHandler;
}());
HttpRequestHandler = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Injectable"])()
], HttpRequestHandler);

//# sourceMappingURL=error-handler.js.map

/***/ }),

/***/ "../../../../../src/app/helpers/html-encoder.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (immutable) */ __webpack_exports__["a"] = htmlEncode;
/* harmony export (immutable) */ __webpack_exports__["b"] = htmlDecode;
function htmlEncode(value) {
    return $("<div/>")
        .text(value)
        .html();
}
function htmlDecode(value) {
    return $("<div/>")
        .html(value)
        .html();
}
//# sourceMappingURL=html-encoder.js.map

/***/ }),

/***/ "../../../../../src/app/helpers/object-serializer.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (immutable) */ __webpack_exports__["a"] = getQueryString;
function getQueryString(obj) {
    var str = [];
    for (var p in obj) {
        if (obj.hasOwnProperty(p)) {
            str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
        }
    }
    return str.join("&");
}
//# sourceMappingURL=object-serializer.js.map

/***/ }),

/***/ "../../../../../src/app/models/article/article-response.model.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ArticleResponseModel; });
var ArticleResponseModel = (function () {
    function ArticleResponseModel() {
    }
    return ArticleResponseModel;
}());

//# sourceMappingURL=article-response.model.js.map

/***/ }),

/***/ "../../../../../src/app/models/article/article-stat.model.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ArticleStatResponseModel; });
var ArticleStatResponseModel = (function () {
    function ArticleStatResponseModel() {
    }
    return ArticleStatResponseModel;
}());

//# sourceMappingURL=article-stat.model.js.map

/***/ }),

/***/ "../../../../../src/app/models/article/articles-request.model.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ArticlesRequestModel; });
var ArticlesRequestModel = (function () {
    function ArticlesRequestModel() {
    }
    return ArticlesRequestModel;
}());

//# sourceMappingURL=articles-request.model.js.map

/***/ }),

/***/ "../../../../../src/app/models/article/get-articles-response.model.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* unused harmony export GetArticlItem */
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return GetArticlesResponse; });
var GetArticlItem = (function () {
    function GetArticlItem() {
    }
    return GetArticlItem;
}());

var GetArticlesResponse = (function () {
    function GetArticlesResponse() {
    }
    return GetArticlesResponse;
}());

//# sourceMappingURL=get-articles-response.model.js.map

/***/ }),

/***/ "../../../../../src/app/models/base-response.model.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return BaseResponseModel; });
var BaseResponseModel = (function () {
    function BaseResponseModel() {
    }
    return BaseResponseModel;
}());

//# sourceMappingURL=base-response.model.js.map

/***/ }),

/***/ "../../../../../src/app/models/login/login-request.model.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LoginRequestModel; });
var LoginRequestModel = (function () {
    function LoginRequestModel() {
        this.password = "password";
    }
    return LoginRequestModel;
}());

//# sourceMappingURL=login-request.model.js.map

/***/ }),

/***/ "../../../../../src/app/models/login/login-response.model.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__base_response_model__ = __webpack_require__("../../../../../src/app/models/base-response.model.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LoginResponseModel; });
var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();

var LoginResponseModel = (function (_super) {
    __extends(LoginResponseModel, _super);
    function LoginResponseModel() {
        return _super.call(this) || this;
    }
    return LoginResponseModel;
}(__WEBPACK_IMPORTED_MODULE_0__base_response_model__["a" /* BaseResponseModel */]));

//# sourceMappingURL=login-response.model.js.map

/***/ }),

/***/ "../../../../../src/app/models/menu-item.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return MenuItem; });
var MenuItem = (function () {
    function MenuItem() {
    }
    return MenuItem;
}());

//# sourceMappingURL=menu-item.js.map

/***/ }),

/***/ "../../../../../src/app/router.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__components_login_login_component__ = __webpack_require__("../../../../../src/app/components/login/login.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__components_home_home_component__ = __webpack_require__("../../../../../src/app/components/home/home.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_auth_guard_service__ = __webpack_require__("../../../../../src/app/services/auth-guard.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__components_not_found_not_found_component__ = __webpack_require__("../../../../../src/app/components/not-found/not-found.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__components_articles_edit_article_edit_article_component__ = __webpack_require__("../../../../../src/app/components/articles/edit-article/edit-article.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__components_articles_view_articles_view_articles_component__ = __webpack_require__("../../../../../src/app/components/articles/view-articles/view-articles.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__components_articles_preview_article_preview_article_component__ = __webpack_require__("../../../../../src/app/components/articles/preview-article/preview-article.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__components_dummy_dummy_component__ = __webpack_require__("../../../../../src/app/components/dummy/dummy.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__components_articles_latest_articles_latest_articles_component__ = __webpack_require__("../../../../../src/app/components/articles/latest-articles/latest-articles.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__components_articles_article_stats_article_stats_component__ = __webpack_require__("../../../../../src/app/components/articles/article-stats/article-stats.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10__components_my_profile_component_my_profile_component_component__ = __webpack_require__("../../../../../src/app/components/my-profile-component/my-profile-component.component.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return RouteDefinitions; });











var RouteDefinitions = [
    { path: "login", component: __WEBPACK_IMPORTED_MODULE_0__components_login_login_component__["a" /* LoginComponent */] },
    {
        path: "",
        component: __WEBPACK_IMPORTED_MODULE_1__components_home_home_component__["a" /* HomeComponent */],
        children: [
            {
                path: "latest",
                component: __WEBPACK_IMPORTED_MODULE_8__components_articles_latest_articles_latest_articles_component__["a" /* LatestArticlesComponent */],
                canActivate: [__WEBPACK_IMPORTED_MODULE_2__services_auth_guard_service__["a" /* AuthGuard */]]
            },
            {
                path: "articles",
                component: __WEBPACK_IMPORTED_MODULE_5__components_articles_view_articles_view_articles_component__["a" /* ViewArticlesComponent */],
                canActivate: [__WEBPACK_IMPORTED_MODULE_2__services_auth_guard_service__["a" /* AuthGuard */]]
            },
            {
                path: "edit/:id",
                component: __WEBPACK_IMPORTED_MODULE_4__components_articles_edit_article_edit_article_component__["a" /* EditArticleComponent */],
                canActivate: [__WEBPACK_IMPORTED_MODULE_2__services_auth_guard_service__["a" /* AuthGuard */]]
            },
            {
                path: "add/:id",
                component: __WEBPACK_IMPORTED_MODULE_4__components_articles_edit_article_edit_article_component__["a" /* EditArticleComponent */],
                canActivate: [__WEBPACK_IMPORTED_MODULE_2__services_auth_guard_service__["a" /* AuthGuard */]]
            },
            {
                path: "preview/:id",
                component: __WEBPACK_IMPORTED_MODULE_6__components_articles_preview_article_preview_article_component__["a" /* PreviewArticleComponent */],
                canActivate: [__WEBPACK_IMPORTED_MODULE_2__services_auth_guard_service__["a" /* AuthGuard */]]
            },
            {
                path: "view/:id",
                component: __WEBPACK_IMPORTED_MODULE_6__components_articles_preview_article_preview_article_component__["a" /* PreviewArticleComponent */],
                canActivate: [__WEBPACK_IMPORTED_MODULE_2__services_auth_guard_service__["a" /* AuthGuard */]]
            },
            {
                path: "profile",
                component: __WEBPACK_IMPORTED_MODULE_10__components_my_profile_component_my_profile_component_component__["a" /* MyProfileComponentComponent */],
                canActivate: [__WEBPACK_IMPORTED_MODULE_2__services_auth_guard_service__["a" /* AuthGuard */]]
            },
            {
                path: "dummy/:title",
                component: __WEBPACK_IMPORTED_MODULE_7__components_dummy_dummy_component__["a" /* DummyComponent */],
                canActivate: [__WEBPACK_IMPORTED_MODULE_2__services_auth_guard_service__["a" /* AuthGuard */]]
            },
            {
                path: "report/:id",
                component: __WEBPACK_IMPORTED_MODULE_9__components_articles_article_stats_article_stats_component__["a" /* ArticleStatsComponent */],
                canActivate: [__WEBPACK_IMPORTED_MODULE_2__services_auth_guard_service__["a" /* AuthGuard */]]
            },
            { path: "not-found", component: __WEBPACK_IMPORTED_MODULE_3__components_not_found_not_found_component__["a" /* NotFoundComponent */] },
            { path: "**", component: __WEBPACK_IMPORTED_MODULE_3__components_not_found_not_found_component__["a" /* NotFoundComponent */] }
        ],
        canActivate: [__WEBPACK_IMPORTED_MODULE_2__services_auth_guard_service__["a" /* AuthGuard */]]
    },
    { path: "not-found", component: __WEBPACK_IMPORTED_MODULE_3__components_not_found_not_found_component__["a" /* NotFoundComponent */] },
    { path: "**", component: __WEBPACK_IMPORTED_MODULE_3__components_not_found_not_found_component__["a" /* NotFoundComponent */] }
];
//# sourceMappingURL=router.js.map

/***/ }),

/***/ "../../../../../src/app/services/article.services.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__("../../../common/@angular/common/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_Rx__ = __webpack_require__("../../../../rxjs/Rx.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_Rx___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_rxjs_Rx__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__helpers_object_serializer__ = __webpack_require__("../../../../../src/app/helpers/object-serializer.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__security_service__ = __webpack_require__("../../../../../src/app/services/security.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__helpers_error_handler__ = __webpack_require__("../../../../../src/app/helpers/error-handler.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__helpers_html_encoder__ = __webpack_require__("../../../../../src/app/helpers/html-encoder.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ArticleService; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};







var ArticleService = (function () {
    function ArticleService(http, securityService, httpRequestHandler) {
        this.http = http;
        this.securityService = securityService;
        this.httpRequestHandler = httpRequestHandler;
    }
    ArticleService.prototype.getArticles = function (articleRequestModel) {
        return this.http
            .get("api/v1/articles?" + __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_3__helpers_object_serializer__["a" /* getQueryString */])(articleRequestModel))
            .map(function (response) {
            return response;
        });
    };
    ArticleService.prototype.getMyArticles = function (articleRequestModel) {
        return this.http
            .get("api/v1/articles/my?" + __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_3__helpers_object_serializer__["a" /* getQueryString */])(articleRequestModel))
            .map(function (response) {
            return response;
        });
    };
    ArticleService.prototype.getArticle = function (id) {
        return this.http
            .get("api/v1/article/" + id)
            .map(function (response) {
            return response;
        });
    };
    ArticleService.prototype.getArticleStats = function (id) {
        return this.http
            .get("api/v1/article/" + id + "/stats")
            .map(function (response) {
            return response;
        });
    };
    ArticleService.prototype.createArticle = function (createArticleRequestModel) {
        var _this = this;
        createArticleRequestModel.author = this.securityService.getUserName();
        var tempCreateArticleRequestModel = $.extend(true, {}, createArticleRequestModel);
        tempCreateArticleRequestModel.body = __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_6__helpers_html_encoder__["a" /* htmlEncode */])(createArticleRequestModel.body);
        return this.http
            .post("api/v1/article", tempCreateArticleRequestModel)
            .map(function (response) {
            return response;
        })
            .catch(function (err, caught) {
            return _this.httpRequestHandler.handleError(err);
        });
    };
    ArticleService.prototype.updateArticle = function (id, editArticleRequestModel) {
        var _this = this;
        return this.http
            .put("api/v1/article/" + id, editArticleRequestModel)
            .map(function (response) {
            return response;
        })
            .catch(function (err, caught) {
            return _this.httpRequestHandler.handleError(err);
        });
    };
    ArticleService.prototype.deleteArticle = function (id) {
        var _this = this;
        return this.http
            .delete("api/v1/article/" + id)
            .map(function (response) {
            return response;
        })
            .catch(function (err, caught) {
            return _this.httpRequestHandler.handleError(err);
        });
    };
    ArticleService.prototype.likeArticle = function (id) {
        var _this = this;
        return this.http
            .put("api/v1/article/" + id + "/like", null)
            .map(function (response) {
            return response;
        })
            .catch(function (ex, caught) {
            return _this.httpRequestHandler.handleError(ex);
        });
    };
    ArticleService.prototype.unpublishArticle = function (id) {
        var _this = this;
        return this.http
            .put("api/v1/article/" + id + "/unpublish", null)
            .map(function (response) {
            return response;
        })
            .catch(function (ex, caught) {
            return _this.httpRequestHandler.handleError(ex);
        });
    };
    ArticleService.prototype.publishArticle = function (id) {
        var _this = this;
        return this.http
            .put("api/v1/article/" + id + "/publish", null)
            .map(function (response) {
            return response;
        })
            .catch(function (ex, caught) {
            return _this.httpRequestHandler.handleError(ex);
        });
    };
    ArticleService.prototype.unlikeArticle = function (id) {
        var _this = this;
        return this.http
            .put("api/v1/article/" + id + "/unlike", null)
            .map(function (response) {
            return response;
        })
            .catch(function (ex, caught) {
            return _this.httpRequestHandler.handleError(ex);
        });
    };
    return ArticleService;
}());
ArticleService = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_1__angular_core__["Injectable"])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_0__angular_common_http__["c" /* HttpClient */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_0__angular_common_http__["c" /* HttpClient */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_4__security_service__["a" /* SecurityService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__security_service__["a" /* SecurityService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_5__helpers_error_handler__["a" /* HttpRequestHandler */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_5__helpers_error_handler__["a" /* HttpRequestHandler */]) === "function" && _c || Object])
], ArticleService);

var _a, _b, _c;
//# sourceMappingURL=article.services.js.map

/***/ }),

/***/ "../../../../../src/app/services/auth-guard.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__security_service__ = __webpack_require__("../../../../../src/app/services/security.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__node_modules_angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AuthGuard; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var AuthGuard = (function () {
    function AuthGuard(securityService, router) {
        this.securityService = securityService;
        this.router = router;
    }
    AuthGuard.prototype.canActivate = function (route, state) {
        if (this.securityService.isUserAuthenticated()) {
            return true;
        }
        else {
            this.router.navigate(["login"], { replaceUrl: true });
            return false;
        }
    };
    return AuthGuard;
}());
AuthGuard = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_2__node_modules_angular_core__["Injectable"])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__security_service__["a" /* SecurityService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__security_service__["a" /* SecurityService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_0__angular_router__["b" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_0__angular_router__["b" /* Router */]) === "function" && _b || Object])
], AuthGuard);

var _a, _b;
//# sourceMappingURL=auth-guard.service.js.map

/***/ }),

/***/ "../../../../../src/app/services/menu-service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_rxjs_Rx__ = __webpack_require__("../../../../rxjs/Rx.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_rxjs_Rx___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_rxjs_Rx__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__models_menu_item__ = __webpack_require__("../../../../../src/app/models/menu-item.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return MenuService; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var MenuService = (function () {
    function MenuService() {
    }
    MenuService.prototype.getMenuItems = function () {
        var latestArticlesMenuItem = new __WEBPACK_IMPORTED_MODULE_2__models_menu_item__["a" /* MenuItem */]();
        latestArticlesMenuItem.text = "Latest Articles";
        latestArticlesMenuItem.icon = "fas fa-home";
        latestArticlesMenuItem.routerName = "/home";
        latestArticlesMenuItem.outlet = "item";
        latestArticlesMenuItem.subRoute = "latest";
        latestArticlesMenuItem.dataTargetId = "";
        latestArticlesMenuItem.items = [];
        var administrationMenuItems = new __WEBPACK_IMPORTED_MODULE_2__models_menu_item__["a" /* MenuItem */]();
        administrationMenuItems.text = "Administration";
        administrationMenuItems.icon = "fas fa-cog";
        administrationMenuItems.dataTargetId = "";
        administrationMenuItems.items = [];
        var myArtcilesMenuItem = new __WEBPACK_IMPORTED_MODULE_2__models_menu_item__["a" /* MenuItem */]();
        myArtcilesMenuItem.text = "My Articles";
        myArtcilesMenuItem.icon = "fas fa-home";
        myArtcilesMenuItem.routerName = "/home";
        myArtcilesMenuItem.outlet = "item";
        myArtcilesMenuItem.subRoute = "articles";
        myArtcilesMenuItem.dataTargetId = "";
        myArtcilesMenuItem.parentText = "Administration > My Articles";
        var usersMenuItem = new __WEBPACK_IMPORTED_MODULE_2__models_menu_item__["a" /* MenuItem */]();
        usersMenuItem.text = "Users";
        usersMenuItem.icon = "fas fa-home";
        usersMenuItem.routerName = "/home";
        usersMenuItem.outlet = "item";
        usersMenuItem.subRoute = "users";
        usersMenuItem.dataTargetId = "";
        usersMenuItem.parentText = "Administration > Users";
        var rolesMenuItem = new __WEBPACK_IMPORTED_MODULE_2__models_menu_item__["a" /* MenuItem */]();
        rolesMenuItem.text = "Roles";
        rolesMenuItem.icon = "fas fa-home";
        rolesMenuItem.routerName = "/home";
        rolesMenuItem.outlet = "item";
        rolesMenuItem.subRoute = "countries";
        rolesMenuItem.dataTargetId = "";
        rolesMenuItem.parentText = "Administration > Roles";
        administrationMenuItems.items = [
            myArtcilesMenuItem,
            usersMenuItem,
            rolesMenuItem
        ];
        var reportsMenuItem = new __WEBPACK_IMPORTED_MODULE_2__models_menu_item__["a" /* MenuItem */]();
        reportsMenuItem.text = "Reports";
        reportsMenuItem.icon = "fas fa-home";
        reportsMenuItem.routerName = "/home";
        reportsMenuItem.outlet = "item";
        reportsMenuItem.subRoute = "reports";
        reportsMenuItem.dataTargetId = "";
        reportsMenuItem.items = [];
        var menuItems = [];
        // menuItems.push(latestArticlesMenuItem);
        // if (isCurrentUserPublisher) {
        //   menuItems.push(administrationMenuItems);
        //   // menuItems.push(reportsMenuItem);
        // }
        return menuItems;
    };
    return MenuService;
}());
MenuService = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Injectable"])(),
    __metadata("design:paramtypes", [])
], MenuService);

//# sourceMappingURL=menu-service.js.map

/***/ }),

/***/ "../../../../../src/app/services/security.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__("../../../common/@angular/common/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_Rx__ = __webpack_require__("../../../../rxjs/Rx.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_Rx___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_rxjs_Rx__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return SecurityService; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var SecurityService = (function () {
    function SecurityService(http, router) {
        this.http = http;
        this.router = router;
    }
    SecurityService.prototype.validateUser = function (loginModel) {
        return this.http
            .post("api/v1/membership/login", {
            username: loginModel.username,
            password: loginModel.password
        })
            .map(function (response) {
            return response;
        });
    };
    SecurityService.prototype.getCookie = function (cname) {
        var name = cname + "=";
        var decodedCookie = decodeURIComponent(document.cookie);
        var ca = decodedCookie.split(";");
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) === " ") {
                c = c.substring(1);
            }
            if (c.indexOf(name) === 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    };
    SecurityService.prototype.getUserId = function () {
        return this.getCookie("UserId");
    };
    SecurityService.prototype.getUserName = function () {
        return this.getCookie("UserName");
    };
    SecurityService.prototype.isCurrentUserPublisher = function () {
        return this.getCookie("Role") === "1";
    };
    SecurityService.prototype.isUserAuthenticated = function () {
        return document.cookie && document.cookie.indexOf(".ASPXAUTH") !== -1;
    };
    SecurityService.prototype.clearAuthenticatedUser = function () {
        this.http.post("api/v1/membership/logout", null).subscribe(function (response) { });
    };
    return SecurityService;
}());
SecurityService = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_1__angular_core__["Injectable"])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_0__angular_common_http__["c" /* HttpClient */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_0__angular_common_http__["c" /* HttpClient */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_3__angular_router__["b" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__angular_router__["b" /* Router */]) === "function" && _b || Object])
], SecurityService);

var _a, _b;
//# sourceMappingURL=security.service.js.map

/***/ }),

/***/ "../../../../../src/environments/environment.prod.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return environment; });
var environment = {
    production: true
};
//# sourceMappingURL=environment.prod.js.map

/***/ }),

/***/ "../../../../../src/main.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_platform_browser_dynamic__ = __webpack_require__("../../../platform-browser-dynamic/@angular/platform-browser-dynamic.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_app_app_module__ = __webpack_require__("../../../../../src/app/app.module.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_environments_environment_prod__ = __webpack_require__("../../../../../src/environments/environment.prod.ts");




if (__WEBPACK_IMPORTED_MODULE_3_environments_environment_prod__["a" /* environment */].production) {
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["enableProdMode"])();
}
__webpack_require__.i(__WEBPACK_IMPORTED_MODULE_1__angular_platform_browser_dynamic__["a" /* platformBrowserDynamic */])().bootstrapModule(__WEBPACK_IMPORTED_MODULE_2_app_app_module__["a" /* AppModule */]);
//# sourceMappingURL=main.js.map

/***/ }),

/***/ "../../../../moment/locale recursive ^\\.\\/.*$":
/***/ (function(module, exports, __webpack_require__) {

var map = {
	"./af": "../../../../moment/locale/af.js",
	"./af.js": "../../../../moment/locale/af.js",
	"./ar": "../../../../moment/locale/ar.js",
	"./ar-dz": "../../../../moment/locale/ar-dz.js",
	"./ar-dz.js": "../../../../moment/locale/ar-dz.js",
	"./ar-kw": "../../../../moment/locale/ar-kw.js",
	"./ar-kw.js": "../../../../moment/locale/ar-kw.js",
	"./ar-ly": "../../../../moment/locale/ar-ly.js",
	"./ar-ly.js": "../../../../moment/locale/ar-ly.js",
	"./ar-ma": "../../../../moment/locale/ar-ma.js",
	"./ar-ma.js": "../../../../moment/locale/ar-ma.js",
	"./ar-sa": "../../../../moment/locale/ar-sa.js",
	"./ar-sa.js": "../../../../moment/locale/ar-sa.js",
	"./ar-tn": "../../../../moment/locale/ar-tn.js",
	"./ar-tn.js": "../../../../moment/locale/ar-tn.js",
	"./ar.js": "../../../../moment/locale/ar.js",
	"./az": "../../../../moment/locale/az.js",
	"./az.js": "../../../../moment/locale/az.js",
	"./be": "../../../../moment/locale/be.js",
	"./be.js": "../../../../moment/locale/be.js",
	"./bg": "../../../../moment/locale/bg.js",
	"./bg.js": "../../../../moment/locale/bg.js",
	"./bm": "../../../../moment/locale/bm.js",
	"./bm.js": "../../../../moment/locale/bm.js",
	"./bn": "../../../../moment/locale/bn.js",
	"./bn.js": "../../../../moment/locale/bn.js",
	"./bo": "../../../../moment/locale/bo.js",
	"./bo.js": "../../../../moment/locale/bo.js",
	"./br": "../../../../moment/locale/br.js",
	"./br.js": "../../../../moment/locale/br.js",
	"./bs": "../../../../moment/locale/bs.js",
	"./bs.js": "../../../../moment/locale/bs.js",
	"./ca": "../../../../moment/locale/ca.js",
	"./ca.js": "../../../../moment/locale/ca.js",
	"./cs": "../../../../moment/locale/cs.js",
	"./cs.js": "../../../../moment/locale/cs.js",
	"./cv": "../../../../moment/locale/cv.js",
	"./cv.js": "../../../../moment/locale/cv.js",
	"./cy": "../../../../moment/locale/cy.js",
	"./cy.js": "../../../../moment/locale/cy.js",
	"./da": "../../../../moment/locale/da.js",
	"./da.js": "../../../../moment/locale/da.js",
	"./de": "../../../../moment/locale/de.js",
	"./de-at": "../../../../moment/locale/de-at.js",
	"./de-at.js": "../../../../moment/locale/de-at.js",
	"./de-ch": "../../../../moment/locale/de-ch.js",
	"./de-ch.js": "../../../../moment/locale/de-ch.js",
	"./de.js": "../../../../moment/locale/de.js",
	"./dv": "../../../../moment/locale/dv.js",
	"./dv.js": "../../../../moment/locale/dv.js",
	"./el": "../../../../moment/locale/el.js",
	"./el.js": "../../../../moment/locale/el.js",
	"./en-au": "../../../../moment/locale/en-au.js",
	"./en-au.js": "../../../../moment/locale/en-au.js",
	"./en-ca": "../../../../moment/locale/en-ca.js",
	"./en-ca.js": "../../../../moment/locale/en-ca.js",
	"./en-gb": "../../../../moment/locale/en-gb.js",
	"./en-gb.js": "../../../../moment/locale/en-gb.js",
	"./en-ie": "../../../../moment/locale/en-ie.js",
	"./en-ie.js": "../../../../moment/locale/en-ie.js",
	"./en-il": "../../../../moment/locale/en-il.js",
	"./en-il.js": "../../../../moment/locale/en-il.js",
	"./en-nz": "../../../../moment/locale/en-nz.js",
	"./en-nz.js": "../../../../moment/locale/en-nz.js",
	"./eo": "../../../../moment/locale/eo.js",
	"./eo.js": "../../../../moment/locale/eo.js",
	"./es": "../../../../moment/locale/es.js",
	"./es-do": "../../../../moment/locale/es-do.js",
	"./es-do.js": "../../../../moment/locale/es-do.js",
	"./es-us": "../../../../moment/locale/es-us.js",
	"./es-us.js": "../../../../moment/locale/es-us.js",
	"./es.js": "../../../../moment/locale/es.js",
	"./et": "../../../../moment/locale/et.js",
	"./et.js": "../../../../moment/locale/et.js",
	"./eu": "../../../../moment/locale/eu.js",
	"./eu.js": "../../../../moment/locale/eu.js",
	"./fa": "../../../../moment/locale/fa.js",
	"./fa.js": "../../../../moment/locale/fa.js",
	"./fi": "../../../../moment/locale/fi.js",
	"./fi.js": "../../../../moment/locale/fi.js",
	"./fo": "../../../../moment/locale/fo.js",
	"./fo.js": "../../../../moment/locale/fo.js",
	"./fr": "../../../../moment/locale/fr.js",
	"./fr-ca": "../../../../moment/locale/fr-ca.js",
	"./fr-ca.js": "../../../../moment/locale/fr-ca.js",
	"./fr-ch": "../../../../moment/locale/fr-ch.js",
	"./fr-ch.js": "../../../../moment/locale/fr-ch.js",
	"./fr.js": "../../../../moment/locale/fr.js",
	"./fy": "../../../../moment/locale/fy.js",
	"./fy.js": "../../../../moment/locale/fy.js",
	"./gd": "../../../../moment/locale/gd.js",
	"./gd.js": "../../../../moment/locale/gd.js",
	"./gl": "../../../../moment/locale/gl.js",
	"./gl.js": "../../../../moment/locale/gl.js",
	"./gom-latn": "../../../../moment/locale/gom-latn.js",
	"./gom-latn.js": "../../../../moment/locale/gom-latn.js",
	"./gu": "../../../../moment/locale/gu.js",
	"./gu.js": "../../../../moment/locale/gu.js",
	"./he": "../../../../moment/locale/he.js",
	"./he.js": "../../../../moment/locale/he.js",
	"./hi": "../../../../moment/locale/hi.js",
	"./hi.js": "../../../../moment/locale/hi.js",
	"./hr": "../../../../moment/locale/hr.js",
	"./hr.js": "../../../../moment/locale/hr.js",
	"./hu": "../../../../moment/locale/hu.js",
	"./hu.js": "../../../../moment/locale/hu.js",
	"./hy-am": "../../../../moment/locale/hy-am.js",
	"./hy-am.js": "../../../../moment/locale/hy-am.js",
	"./id": "../../../../moment/locale/id.js",
	"./id.js": "../../../../moment/locale/id.js",
	"./is": "../../../../moment/locale/is.js",
	"./is.js": "../../../../moment/locale/is.js",
	"./it": "../../../../moment/locale/it.js",
	"./it.js": "../../../../moment/locale/it.js",
	"./ja": "../../../../moment/locale/ja.js",
	"./ja.js": "../../../../moment/locale/ja.js",
	"./jv": "../../../../moment/locale/jv.js",
	"./jv.js": "../../../../moment/locale/jv.js",
	"./ka": "../../../../moment/locale/ka.js",
	"./ka.js": "../../../../moment/locale/ka.js",
	"./kk": "../../../../moment/locale/kk.js",
	"./kk.js": "../../../../moment/locale/kk.js",
	"./km": "../../../../moment/locale/km.js",
	"./km.js": "../../../../moment/locale/km.js",
	"./kn": "../../../../moment/locale/kn.js",
	"./kn.js": "../../../../moment/locale/kn.js",
	"./ko": "../../../../moment/locale/ko.js",
	"./ko.js": "../../../../moment/locale/ko.js",
	"./ky": "../../../../moment/locale/ky.js",
	"./ky.js": "../../../../moment/locale/ky.js",
	"./lb": "../../../../moment/locale/lb.js",
	"./lb.js": "../../../../moment/locale/lb.js",
	"./lo": "../../../../moment/locale/lo.js",
	"./lo.js": "../../../../moment/locale/lo.js",
	"./lt": "../../../../moment/locale/lt.js",
	"./lt.js": "../../../../moment/locale/lt.js",
	"./lv": "../../../../moment/locale/lv.js",
	"./lv.js": "../../../../moment/locale/lv.js",
	"./me": "../../../../moment/locale/me.js",
	"./me.js": "../../../../moment/locale/me.js",
	"./mi": "../../../../moment/locale/mi.js",
	"./mi.js": "../../../../moment/locale/mi.js",
	"./mk": "../../../../moment/locale/mk.js",
	"./mk.js": "../../../../moment/locale/mk.js",
	"./ml": "../../../../moment/locale/ml.js",
	"./ml.js": "../../../../moment/locale/ml.js",
	"./mn": "../../../../moment/locale/mn.js",
	"./mn.js": "../../../../moment/locale/mn.js",
	"./mr": "../../../../moment/locale/mr.js",
	"./mr.js": "../../../../moment/locale/mr.js",
	"./ms": "../../../../moment/locale/ms.js",
	"./ms-my": "../../../../moment/locale/ms-my.js",
	"./ms-my.js": "../../../../moment/locale/ms-my.js",
	"./ms.js": "../../../../moment/locale/ms.js",
	"./mt": "../../../../moment/locale/mt.js",
	"./mt.js": "../../../../moment/locale/mt.js",
	"./my": "../../../../moment/locale/my.js",
	"./my.js": "../../../../moment/locale/my.js",
	"./nb": "../../../../moment/locale/nb.js",
	"./nb.js": "../../../../moment/locale/nb.js",
	"./ne": "../../../../moment/locale/ne.js",
	"./ne.js": "../../../../moment/locale/ne.js",
	"./nl": "../../../../moment/locale/nl.js",
	"./nl-be": "../../../../moment/locale/nl-be.js",
	"./nl-be.js": "../../../../moment/locale/nl-be.js",
	"./nl.js": "../../../../moment/locale/nl.js",
	"./nn": "../../../../moment/locale/nn.js",
	"./nn.js": "../../../../moment/locale/nn.js",
	"./pa-in": "../../../../moment/locale/pa-in.js",
	"./pa-in.js": "../../../../moment/locale/pa-in.js",
	"./pl": "../../../../moment/locale/pl.js",
	"./pl.js": "../../../../moment/locale/pl.js",
	"./pt": "../../../../moment/locale/pt.js",
	"./pt-br": "../../../../moment/locale/pt-br.js",
	"./pt-br.js": "../../../../moment/locale/pt-br.js",
	"./pt.js": "../../../../moment/locale/pt.js",
	"./ro": "../../../../moment/locale/ro.js",
	"./ro.js": "../../../../moment/locale/ro.js",
	"./ru": "../../../../moment/locale/ru.js",
	"./ru.js": "../../../../moment/locale/ru.js",
	"./sd": "../../../../moment/locale/sd.js",
	"./sd.js": "../../../../moment/locale/sd.js",
	"./se": "../../../../moment/locale/se.js",
	"./se.js": "../../../../moment/locale/se.js",
	"./si": "../../../../moment/locale/si.js",
	"./si.js": "../../../../moment/locale/si.js",
	"./sk": "../../../../moment/locale/sk.js",
	"./sk.js": "../../../../moment/locale/sk.js",
	"./sl": "../../../../moment/locale/sl.js",
	"./sl.js": "../../../../moment/locale/sl.js",
	"./sq": "../../../../moment/locale/sq.js",
	"./sq.js": "../../../../moment/locale/sq.js",
	"./sr": "../../../../moment/locale/sr.js",
	"./sr-cyrl": "../../../../moment/locale/sr-cyrl.js",
	"./sr-cyrl.js": "../../../../moment/locale/sr-cyrl.js",
	"./sr.js": "../../../../moment/locale/sr.js",
	"./ss": "../../../../moment/locale/ss.js",
	"./ss.js": "../../../../moment/locale/ss.js",
	"./sv": "../../../../moment/locale/sv.js",
	"./sv.js": "../../../../moment/locale/sv.js",
	"./sw": "../../../../moment/locale/sw.js",
	"./sw.js": "../../../../moment/locale/sw.js",
	"./ta": "../../../../moment/locale/ta.js",
	"./ta.js": "../../../../moment/locale/ta.js",
	"./te": "../../../../moment/locale/te.js",
	"./te.js": "../../../../moment/locale/te.js",
	"./tet": "../../../../moment/locale/tet.js",
	"./tet.js": "../../../../moment/locale/tet.js",
	"./tg": "../../../../moment/locale/tg.js",
	"./tg.js": "../../../../moment/locale/tg.js",
	"./th": "../../../../moment/locale/th.js",
	"./th.js": "../../../../moment/locale/th.js",
	"./tl-ph": "../../../../moment/locale/tl-ph.js",
	"./tl-ph.js": "../../../../moment/locale/tl-ph.js",
	"./tlh": "../../../../moment/locale/tlh.js",
	"./tlh.js": "../../../../moment/locale/tlh.js",
	"./tr": "../../../../moment/locale/tr.js",
	"./tr.js": "../../../../moment/locale/tr.js",
	"./tzl": "../../../../moment/locale/tzl.js",
	"./tzl.js": "../../../../moment/locale/tzl.js",
	"./tzm": "../../../../moment/locale/tzm.js",
	"./tzm-latn": "../../../../moment/locale/tzm-latn.js",
	"./tzm-latn.js": "../../../../moment/locale/tzm-latn.js",
	"./tzm.js": "../../../../moment/locale/tzm.js",
	"./ug-cn": "../../../../moment/locale/ug-cn.js",
	"./ug-cn.js": "../../../../moment/locale/ug-cn.js",
	"./uk": "../../../../moment/locale/uk.js",
	"./uk.js": "../../../../moment/locale/uk.js",
	"./ur": "../../../../moment/locale/ur.js",
	"./ur.js": "../../../../moment/locale/ur.js",
	"./uz": "../../../../moment/locale/uz.js",
	"./uz-latn": "../../../../moment/locale/uz-latn.js",
	"./uz-latn.js": "../../../../moment/locale/uz-latn.js",
	"./uz.js": "../../../../moment/locale/uz.js",
	"./vi": "../../../../moment/locale/vi.js",
	"./vi.js": "../../../../moment/locale/vi.js",
	"./x-pseudo": "../../../../moment/locale/x-pseudo.js",
	"./x-pseudo.js": "../../../../moment/locale/x-pseudo.js",
	"./yo": "../../../../moment/locale/yo.js",
	"./yo.js": "../../../../moment/locale/yo.js",
	"./zh-cn": "../../../../moment/locale/zh-cn.js",
	"./zh-cn.js": "../../../../moment/locale/zh-cn.js",
	"./zh-hk": "../../../../moment/locale/zh-hk.js",
	"./zh-hk.js": "../../../../moment/locale/zh-hk.js",
	"./zh-tw": "../../../../moment/locale/zh-tw.js",
	"./zh-tw.js": "../../../../moment/locale/zh-tw.js"
};
function webpackContext(req) {
	return __webpack_require__(webpackContextResolve(req));
};
function webpackContextResolve(req) {
	var id = map[req];
	if(!(id + 1)) // check for number or string
		throw new Error("Cannot find module '" + req + "'.");
	return id;
};
webpackContext.keys = function webpackContextKeys() {
	return Object.keys(map);
};
webpackContext.resolve = webpackContextResolve;
module.exports = webpackContext;
webpackContext.id = "../../../../moment/locale recursive ^\\.\\/.*$";

/***/ }),

/***/ 0:
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__("../../../../../src/main.ts");


/***/ })

},[0]);
//# sourceMappingURL=main.bundle.js.map