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
    DynastyUrbanStyle(), // the custom stateless widget
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
  DynastyUrbanStyle({Key? key}) : super(key: key) {
    themeController.initTheme();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dynasty Urban Style Dashboard',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system,

      // routes and routing
      initialRoute: authPageRoute,
      unknownRoute: GetPage(
        name: '/not-found',
        page: () => const NotFoundPage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 3000),
      ),
      // get all pages
      getPages: [
        GetPage(
          name: rootRoute,
          page: () {
            return const SiteLayout();
          },
        ),
        GetPage(
          name: authPageRoute,
          page: () => const AuthenticationPage(),
        ),
      ],
    );
  }
}
