import 'package:flutter/material.dart';
import 'package:dynasty_urban_style/index.dart';
import 'package:get/get.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final bool isActive;
  final void Function() onTap;

  const InfoCardSmall({
    Key? key,
    required this.title,
    required this.value,
    this.isActive = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Expanded(
        child: InkWell(
          onTap: onTap,
          child: Container(
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: themeController.isLightTheme() ? BrandColors.kColorBackground : BrandColors.kColorDarkTheme,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  // if its active and light theme, then show border
                  color:
                      isActive && themeController.isLightTheme() ? BrandColors.kColorLightBlue : BrandColors.kWhiteGray,
                  width: 0.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: title,
                    size: 24.0,
                    weight: FontWeight.w300,
                    color: isActive ? BrandColors.kColorBlue : BrandColors.kLightGray,
                  ),
                  CustomText(
                    text: value,
                    size: 24.0,
                    weight: FontWeight.bold,
                    color: isActive ? BrandColors.kColorBlue : BrandColors.kLightGray,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
