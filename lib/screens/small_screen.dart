import 'package:flutter/material.dart';
import 'package:dynasty_urban_style/index.dart';
import 'package:get/get.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: themeController.isLightTheme ? BrandColors.kColorBackground : BrandColors.kColorDarkTheme,
        ),
        child: localNavigator(),
      ),
    );
  }
}
