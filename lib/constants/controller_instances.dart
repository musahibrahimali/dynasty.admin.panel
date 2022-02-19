import 'package:dynasty_urban_style/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

// define all controller instances here
MenuController menuController = MenuController.instance;
NavigationController navigationController = NavigationController.instance;
ThemeController themeController = ThemeController.instance;
AdminController adminController = AdminController.instance;

// share preference instance
Future<SharedPreferences> sharedPreferences = SharedPreferences.getInstance();

// is light theme active
final isLightTheme = themeController.isLightTheme;

// admin instance
Admin admin = Admin();
