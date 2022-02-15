import 'package:get/get.dart';
import 'package:dynasty_urban_style/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  static ThemeController instance = Get.find();

  var isLightTheme = true.obs;

  // change the theme
  toggleTheme() {
    isLightTheme.value = !isLightTheme.value;
    _saveThemeStatus();
  }

  // is light theme active
  isLightThemeActive() => isLightTheme.value == true;

  // change theme from shared pref
  initTheme() async {
    SharedPreferences prefs = await sharedPreferences;
    isLightTheme.value = prefs.getBool('theme') ?? true;
  }

  _saveThemeStatus() async {
    SharedPreferences pref = await sharedPreferences;
    pref.setBool('theme', isLightThemeActive());
  }
}
