import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  // ensure all widgets and bindings are created
  WidgetsFlutterBinding.ensureInitialized();

  /*
  * set up graphql for flutter
  */

  // init hive store
  await initHiveForFlutter();

  // set the app's controller instances
  Get.put(MenuController());
  Get.put(NavigationController());
  Get.put(ThemeController());
  Get.put(AdminController());

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
    adminController.initAdmin();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: graphqlClient,
      child: GetMaterialApp(
        title: 'Dynasty Urban Style Dashboard',
        debugShowCheckedModeBanner: false,
        theme: lightThemeData(context),
        darkTheme: darkThemeData(context),
        themeMode: isLightTheme ? ThemeMode.light : ThemeMode.dark,

        // routes and routing
        initialRoute: adminController.isAdminloggedin ? homeRoute : authPageRoute,
        unknownRoute: GetPage(
          name: '/not-found',
          page: () => const NotFoundPage(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(
            milliseconds: 3000,
          ),
        ),
        // get all pages
        getPages: [
          GetPage(
            name: rootRoute,
            page: () => const SiteLayout(),
          ),
          GetPage(
            name: authPageRoute,
            page: () => const AuthenticationPage(),
          ),
        ],
      ),
    );
  }
}
