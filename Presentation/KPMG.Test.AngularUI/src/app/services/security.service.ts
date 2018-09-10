import { HttpClient } from "@angular/common/http";
import { Injectable, Inject } from "@angular/core";
import { LoginRequestModel } from "../models/login/login-request.model";
import { LoginResponseModel } from "../models/login/login-response.model";
import "rxjs/Rx";
import { Router } from "@angular/router";

@Injectable()
export class SecurityService {
  constructor(
    private http: HttpClient,
    private router: Router
  ) {}

  validateUser(loginModel: LoginRequestModel) {
    return this.http
      .post("api/v1/membership/login", {
        username: loginModel.username,
        password: loginModel.password
      })
      .map((response: LoginResponseModel) => {
        return response;
      });
  }

  getCookie(cname) {
    const name = cname + "=";
    const decodedCookie = decodeURIComponent(document.cookie);
    const ca = decodedCookie.split(";");
    for (let i = 0; i < ca.length; i++) {
      let c = ca[i];
      while (c.charAt(0) === " ") {
        c = c.substring(1);
      }
      if (c.indexOf(name) === 0) {
        return c.substring(name.length, c.length);
      }
    }
    return "";
  }

  getUserId() {
    return this.getCookie("UserId");
  }

  getUserName() {
    return this.getCookie("UserName");
  }

  isCurrentUserPublisher() {
    return this.getCookie("Role") === "1";
  }

  isUserAuthenticated() {
    return document.cookie && document.cookie.indexOf(".ASPXAUTH") !== -1;
  }

  clearAuthenticatedUser() {
    this.http.post("api/v1/membership/logout", null).subscribe(response => {});
  }

}
