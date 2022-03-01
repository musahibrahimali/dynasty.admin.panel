import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dynasty_urban_style/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: ResponsiveWidget.isSmallScreen(context) ? 56.0 : 8.0,
                ),
                child: CustomText(
                  text:
                      menuController.activeItem.value.length > 2 ? "Overview".toUpperCase() : "Overview".toUpperCase(),
                  size: 24.0,
                  weight: FontWeight.w900,
                  color: themeController.isLightTheme ? BrandColors.kColorDarkTheme : BrandColors.kWhiteGray,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveWidget.isSmallScreen(context))
                const OverviewCardsSmallScreen()
              else if (ResponsiveWidget.isLargeScreen(context))
                const OverviewCardsLargeScreen()
              else
                const OverviewCardsMediumScreen(),

              // other contents
              if (!ResponsiveWidget.isSmallScreen(context))
                const RevenueSectionLarge()
              else
                const RevenueSectionSmall(),
              const AvailableDriversTable(),
            ],
          ),
        ),
      ],
    );
  }
}
