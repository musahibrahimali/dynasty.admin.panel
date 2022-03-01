import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          InfoCard(
            title: "Rides in progress",
            value: "7",
            onTap: () {},
            topColor: Colors.orange,
          ),
          SizedBox(width: _width / 64),
          InfoCard(
            title: "Packages delivered",
            value: "17",
            topColor: Colors.lightGreen,
            onTap: () {},
          ),
          SizedBox(width: _width / 64),
          InfoCard(
            title: "Cancelled delivery",
            value: "3",
            topColor: Colors.redAccent,
            onTap: () {},
          ),
          SizedBox(width: _width / 64),
          InfoCard(
            title: "Scheduled deliveries",
            value: "32",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
