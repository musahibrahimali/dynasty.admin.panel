import 'package:dynasty_urban_style/index.dart';
import 'package:dynasty_urban_style/pages/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 24.0,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 30.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: BrandColors.kWhite,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0.0, 6.0),
            color: BrandColors.kLightGray.withOpacity(0.1),
            blurRadius: 12.0,
          )
        ],
        border: Border.all(
          color: BrandColors.kWhiteGray,
          width: 0.5,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: "Revenue Chart".toUpperCase(),
                  size: 20.0,
                  weight: FontWeight.bold,
                  color: BrandColors.kLightGray,
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
            width: 1.0,
            height: 120.0,
            color: BrandColors.kLightGray,
          ),
          Expanded(
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
                const SizedBox(height: 30.0),
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
    );
  }
}
