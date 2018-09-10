import { Component, OnInit, ViewChild } from "@angular/core";
import { SecurityService } from "../../services/security.service";
import { NgForm } from "@angular/forms";
import { LoginRequestModel } from "../../models/login/login-request.model";
import { LoginResponseModel } from "../../models/login/login-response.model";
import { Router } from "@angular/router";

declare var jquery: any;
declare var $: any;

@Component({
  selector: "app-login",
  templateUrl: "./login.component.html",
  styleUrls: ["./login.component.css"]
})
export class LoginComponent implements OnInit {
  public loginRequestModel: LoginRequestModel;
  public loginResponseModel: LoginResponseModel;
  @ViewChild("loginForm")
  loginForm: NgForm;

  constructor(
    private securityService: SecurityService,
    private router: Router
  ) {
    this.loginRequestModel = new LoginRequestModel();
    this.loginResponseModel = new LoginResponseModel();
  }

  ngOnInit() {}

  onTextBoxKeyPress(event) {
    // if (event.which === 13) {
    //   console.log(event);
    // }
  }

  onSubmit(event) {
    const buttonLogin: any = $(event.currentTarget);
    const loadingText: string = event.currentTarget.dataset.loadingText;

    if (buttonLogin.html() !== loadingText) {
      buttonLogin.data("original-text", buttonLogin.html());
      buttonLogin.html(loadingText);
    }

    this.securityService
      .validateUser(this.loginRequestModel)
      .subscribe(response => {
        buttonLogin.html(buttonLogin.data("original-text"));

        this.loginResponseModel = response;

        if (response.isSuccess) {
          this.router.navigate(["", "latest"], { replaceUrl: true });
        }
      });
  }
}
