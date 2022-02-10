import 'package:flutter/material.dart';
import 'package:dynasty_urban_style/index.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case loginRoute:
      return _getPageRoute(const LoginPage());
    case registrationRoute:
      return _getPageRoute(const RegisterPage());
    case homeRoute:
      return _getPageRoute(const HomePage());
    case productsRoute:
      return _getPageRoute(const ProductsPage());
    case brandsRoute:
      return _getPageRoute(const BrandsPage());
    case categoriesRoute:
      return _getPageRoute(const CategoriesPage());
    case ordersRoute:
      return _getPageRoute(const OrdersPage());
    case usersRoute:
      return _getPageRoute(const UsersPage());
    case pageControllerRoute:
      return _getPageRoute(const AppPagesController());
    default:
      return _getPageRoute(const LoginPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
