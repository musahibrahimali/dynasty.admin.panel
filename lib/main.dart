import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

void main() async {
  // ensure all widgets and bindings are created
  WidgetsFlutterBinding.ensureInitialized();

  // set the app's controller instances
  Get.put(MenuController());
  Get.put(NavigationController());
  Get.put(ThemeController());

  // run the app
  runApp(
    const DynastyUrbanStyle(), // the custom stateless widget
  );

  // handle display orientation on various devices
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [],
  );
}

// this is the root of the application
class DynastyUrbanStyle extends StatelessWidget {
  const DynastyUrbanStyle({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dynasty Urban Style Dashboard',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: themeController.isLightTheme() ? ThemeMode.light : ThemeMode.dark,
      // themeMode: ThemeMode.light,
      home: const AuthenticationPage(),
    );
  }
}
