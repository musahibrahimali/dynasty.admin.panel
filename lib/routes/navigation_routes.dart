const String homeRoute = "/home";
const String homeRouteName = "Home";

const String productsRoute = "/products";
const String productsRouteName = "Products";

const String usersRoute = "/users";
const String usersRouteName = "Users";

const String ordersRoute = "/orders";
const String ordersRouteName = "Orders";

const String categoriesRoute = "/categories";
const String categoriesRouteName = "Categories";

const String brandsRoute = "/brands";
const String brandsRouteName = "Brands";

const String authPageRoute = "/auth";
const String authPageRouteName = "Log out";

const String loginRoute = "/login";
const String loginRouteName = "Login";

const String registrationRoute = "/registration";
const String registrationRouteName = "Registration";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(homeRouteName, homeRoute),
  MenuItem(productsRouteName, productsRoute),
  MenuItem(brandsRouteName, brandsRoute),
  MenuItem(categoriesRouteName, categoriesRoute),
  MenuItem(ordersRouteName, ordersRoute),
  MenuItem(usersRouteName, usersRoute),
  MenuItem(authPageRouteName, authPageRoute),
];
