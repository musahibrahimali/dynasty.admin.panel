import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        color: themeController.isLightTheme() ? BrandColors.kColorBackground : BrandColors.kColorDarkBlue,
        child: ListView(
          children: [
            if (ResponsiveWidget.isSmallScreen(context))
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      BrandLogo(),
                    ],
                  ),
                ],
              ),
            const SizedBox(height: 15.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItemRoutes
                  .map(
                    (item) => SideMenuItem(
                        itemName: item.name,
                        onTap: () {
                          if (item.route == authPageRoute) {
                            Get.offAllNamed(authPageRoute);
                            menuController.changeActiveItem(homeRoute);
                          }
                          if (!menuController.isActive(item.name)) {
                            menuController.changeActiveItem(item.name);
                            if (ResponsiveWidget.isSmallScreen(context)) {
                              Get.back();
                            }
                            navigationController.navigateTo(item.route);
                          }
                        }),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
