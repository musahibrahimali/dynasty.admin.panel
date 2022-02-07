import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);
  // create a global key for the scaffold
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavBar(
            context: context,
            scaffoldKey: scaffoldKey,
          ),
          const Expanded(
            child: ResponsiveWidget(
              largeScreen: LargeScreen(),
              smallScreen: SmallScreen(),
              mediumScreen: MediumScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
