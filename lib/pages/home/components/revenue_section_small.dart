import 'package:dynasty_urban_style/index.dart';
import 'package:dynasty_urban_style/pages/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: const EdgeInsets.all(24.0),
        margin: const EdgeInsets.symmetric(vertical: 30.0),
        decoration: BoxDecoration(
          color: themeController.isLightTheme() ? BrandColors.kColorBackground : BrandColors.kWhiteGray,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0.0, 6.0),
              color: BrandColors.kLightGray.withOpacity(0.1),
              blurRadius: 12.0,
            )
          ],
          border: Border.all(
            color: BrandColors.kLightGray,
            width: 0.5,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 260.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomText(
                    text: "Revenue Chart".toUpperCase(),
                    size: 20.0,
                    weight: FontWeight.bold,
                    color: themeController.isLightTheme() ? BrandColors.kLightGray : BrandColors.kHighlightGray,
                  ),
                  SizedBox(
                    width: 600.0,
                    height: 200.0,
                    child: SimpleBarChart.withSampleData(),
                  ),
                ],
              ),
            ),
            Container(
              width: 120.0,
              height: 1.0,
              color: BrandColors.kLightGray,
            ),
            SizedBox(
              height: 260.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: const [
                      RevenueInfo(
                        title: "Today's revenue",
                        amount: "230",
                      ),
                      RevenueInfo(
                        title: "Last 7 days",
                        amount: "1,100",
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      RevenueInfo(
                        title: "Last 30 days",
                        amount: "3,230",
                      ),
                      RevenueInfo(
                        title: "Last 12 months",
                        amount: "11,300",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
