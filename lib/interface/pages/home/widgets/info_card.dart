import 'package:flutter/material.dart';
import 'package:dynasty_urban_style/index.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color? topColor;
  final bool isActive;
  final void Function() onTap;

  const InfoCard({
    Key? key,
    required this.title,
    required this.value,
    this.isActive = false,
    required this.onTap,
    this.topColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Expanded(
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 136.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: themeController.isLightTheme ? BrandColors.kColorBackground : BrandColors.kColorDarkTheme,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0.0, 6.0),
                  color: BrandColors.kLightGray.withOpacity(0.1),
                  blurRadius: 12.0,
                ),
              ],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: topColor ?? BrandColors.kColorBlue,
                        height: 5.0,
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$title\n",
                        style: GoogleFonts.nunito(
                          fontSize: 16.0,
                          color: isActive ? BrandColors.kColorBlue : BrandColors.kLightGray,
                        ),
                      ),
                      TextSpan(
                        text: value,
                        style: GoogleFonts.nunito(
                          fontSize: 40.0,
                          color: isActive ? BrandColors.kColorBlue : BrandColors.kLightGray,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
