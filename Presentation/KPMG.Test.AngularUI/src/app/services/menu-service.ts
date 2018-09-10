import { Injectable, Inject } from "@angular/core";
import "rxjs/Rx";
import { MenuItem } from "../models/menu-item";

@Injectable()
export class MenuService {
  constructor() {}

  getMenuItems() {
    const latestArticlesMenuItem = new MenuItem();

    latestArticlesMenuItem.text = "Latest Articles";
    latestArticlesMenuItem.icon = "fas fa-home";
    latestArticlesMenuItem.routerName = "/home";
    latestArticlesMenuItem.outlet = "item";
    latestArticlesMenuItem.subRoute = "latest";
    latestArticlesMenuItem.dataTargetId = "";
    latestArticlesMenuItem.items = [];

    const administrationMenuItems = new MenuItem();

    administrationMenuItems.text = "Administration";
    administrationMenuItems.icon = "fas fa-cog";
    administrationMenuItems.dataTargetId = "";
    administrationMenuItems.items = [];

    const myArtcilesMenuItem = new MenuItem();
    myArtcilesMenuItem.text = "My Articles";
    myArtcilesMenuItem.icon = "fas fa-home";
    myArtcilesMenuItem.routerName = "/home";
    myArtcilesMenuItem.outlet = "item";
    myArtcilesMenuItem.subRoute = "articles";
    myArtcilesMenuItem.dataTargetId = "";
    myArtcilesMenuItem.parentText = "Administration > My Articles";

    const usersMenuItem = new MenuItem();
    usersMenuItem.text = "Users";
    usersMenuItem.icon = "fas fa-home";
    usersMenuItem.routerName = "/home";
    usersMenuItem.outlet = "item";
    usersMenuItem.subRoute = "users";
    usersMenuItem.dataTargetId = "";
    usersMenuItem.parentText = "Administration > Users";

    const rolesMenuItem = new MenuItem();
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

    const reportsMenuItem = new MenuItem();

    reportsMenuItem.text = "Reports";
    reportsMenuItem.icon = "fas fa-home";
    reportsMenuItem.routerName = "/home";
    reportsMenuItem.outlet = "item";
    reportsMenuItem.subRoute = "reports";
    reportsMenuItem.dataTargetId = "";
    reportsMenuItem.items = [];

    const menuItems: MenuItem[] = [];

    // menuItems.push(latestArticlesMenuItem);

    // if (isCurrentUserPublisher) {
    //   menuItems.push(administrationMenuItems);
    //   // menuItems.push(reportsMenuItem);
    // }

    return menuItems;
  }
}
