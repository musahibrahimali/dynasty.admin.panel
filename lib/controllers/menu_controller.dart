import 'package:flutter/material.dart';
import 'package:dynasty_urban_style/index.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  // the active menu item
  var activeItem = homeRoute.obs;
  var hoverItem = "".obs;

  // change the active menu item
  changeActiveItem(String item) {
    activeItem.value = item;
  }

  // change the hover menu item
  onHover(String item) {
    if (!isActive(item)) hoverItem.value = item;
  }

  // is the item active
  isActive(String item) => activeItem.value == item;

  // is the item hover
  isHovering(String item) => hoverItem.value == item;

  // return an icon for the menu item
  Widget returnIconFor(String itemName) {
    // return an icon for the menu item
    switch (itemName) {
      case homeRouteName:
        return _customIcon(Icons.store_mall_directory_outlined, itemName);
      case productsRouteName:
        return _customIcon(Icons.storefront_sharp, itemName);
      case brandsRouteName:
        return _customIcon(Icons.branding_watermark_outlined, itemName);
      case categoriesRouteName:
        return _customIcon(Icons.category_outlined, itemName);
      case ordersRouteName:
        return _customIcon(Icons.shopping_basket_outlined, itemName);
      case usersRouteName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authPageRouteName:
        return _customIcon(Icons.exit_to_app_outlined, itemName);
      default:
        return _customIcon(Icons.lock_open_outlined, itemName);
    }
  }

  // return a custom icon for the menu item
  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22.0,
        color: BrandColors.kDarkGray,
      );
    }
    return Icon(
      icon,
      color: isHovering(itemName) ? BrandColors.kDarkGray : BrandColors.kLightGray,
    );
  }
}
