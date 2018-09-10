import { Component, OnInit } from "@angular/core";
import { SecurityService } from "../../services/security.service";
import { Router } from "../../../../node_modules/@angular/router";
import { MenuItem } from "../../models/menu-item";
import { MenuService } from "../../services/menu-service";

@Component({
  selector: "app-home",
  templateUrl: "./home.component.html",
  styleUrls: ["./home.component.css"]
})
export class HomeComponent implements OnInit {
  public isHidden = false;
  public suggestionItems: any[];
  public menuItems: MenuItem[];
  public username: string;

  public isHideAdminSection: boolean;

  constructor(
    private securityService: SecurityService,
    private menuService: MenuService,
    private router: Router
  ) {}

  ngOnInit() {
    this.menuItems = this.menuService.getMenuItems();
    this.isHideAdminSection = this.securityService.isCurrentUserPublisher();
    this.username = this.securityService.getUserName();
  }

  onSideBarButtonClick() {
    this.isHidden = !this.isHidden;
  }

  onLogoutClick() {
    this.securityService.clearAuthenticatedUser();
    this.router.navigate(["/login"]);
  }

  onSearchInput(event) {
    const searchText = event.target.value;

    this.suggestionItems = [];
    if (!searchText) {
      return;
    }

    for (const menuItem of this.menuItems) {
      for (const item of menuItem.items) {
        if (item.text.toLowerCase().startsWith(searchText.toLowerCase())) {
          this.suggestionItems.push(item);
        }
      }
    }
  }

  onSuggestionItemClicked(suggestionItem) {
  }

  onclick(event) {}

  onBlurSearchInput() {
    this.suggestionItems = [];
  }
}

export class SuggestionItem {
  constructor(public text: string) {}
}
