import { Injectable } from "@angular/core";
import { getBaseUrl } from "./app-data";
import {
  HttpRequest,
  HttpHandler,
  HttpEvent,
  HttpInterceptor
} from "@angular/common/http";
import { Observable } from "rxjs/Observable";
@Injectable()
export class ApiInterceptor implements HttpInterceptor {
  constructor() {}
  intercept(
    request: HttpRequest<any>,
    next: HttpHandler
  ): Observable<HttpEvent<any>> {
    const baseUrl = getBaseUrl();
    const apiReq = request.clone({ url: `${baseUrl}/${request.url}` });
    return next.handle(apiReq);
  }
}
