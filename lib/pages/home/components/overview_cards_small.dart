import 'package:flutter/material.dart';
import 'package:dynasty_urban_style/pages/home/widgets/widgets.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: 400.0,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress",
            value: "7",
            onTap: () {},
            isActive: true,
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: "Packages delivered",
            value: "17",
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: "Cancelled delivery",
            value: "3",
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: "Scheduled deliveries",
            value: "32",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
