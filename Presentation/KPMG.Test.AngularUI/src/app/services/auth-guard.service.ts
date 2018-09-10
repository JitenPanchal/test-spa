import {
  CanActivate,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
  Router
} from "@angular/router";
import { SecurityService } from "./security.service";
import { Observable } from "rxjs/Rx";
import { Injectable } from "../../../node_modules/@angular/core";

@Injectable()
export class AuthGuard implements CanActivate {
  constructor(
    private securityService: SecurityService,
    private router: Router
  ) {}

  canActivate(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot
  ): Observable<boolean> | Promise<boolean> | boolean {
    if (this.securityService.isUserAuthenticated()) {
      return true;
    } else {
      this.router.navigate(["login"], { replaceUrl: true });
      return false;
    }
  }
}
