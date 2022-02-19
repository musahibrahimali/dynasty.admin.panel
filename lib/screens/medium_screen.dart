import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: SideMenu()),
        Expanded(
          flex: 5,
          child: Obx(
            () => Container(
              decoration: BoxDecoration(
                color: themeController.isLightTheme ? BrandColors.kColorBackground : BrandColors.kColorDarkTheme,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: localNavigator(),
            ),
          ),
        ),
      ],
    );
  }
}
