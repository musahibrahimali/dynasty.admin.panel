import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RevenueInfo extends StatelessWidget {
  final String title;
  final String amount;

  const RevenueInfo({
    Key? key,
    required this.title,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Expanded(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: "$title \n\n",
                style: TextStyle(
                  color: themeController.isLightTheme() ? BrandColors.kLightGray : BrandColors.kHighlightGray,
                  fontSize: 16.0,
                ),
              ),
              TextSpan(
                text: "\$ $amount",
                style: GoogleFonts.nunito(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: BrandColors.kColorBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
