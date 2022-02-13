import 'package:get/get.dart';

class ThemeController extends GetxController {
  static ThemeController instance = Get.find();

  var isDarkTheme = false.obs;
  var isLightTheme = true.obs;

  // change the theme
  changeTheme() {
    isDarkTheme.value = !isDarkTheme.value;
    isLightTheme.value = !isLightTheme.value;
  }

  // is light theme active
  isLightThemeActive() => isLightTheme.value == true;

  // is dark theme active
  isDarkThemeActive() => isDarkTheme.value == true;
}
