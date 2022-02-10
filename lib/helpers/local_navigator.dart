import 'package:flutter/cupertino.dart';
import 'package:dynasty_urban_style/index.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: homeRoute,
    );
