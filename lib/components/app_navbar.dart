import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final BuildContext context;
  const NavBar({
    Key? key,
    required this.scaffoldKey,
    required this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 0.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: BrandColors.kWhite,
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 15.0,
            spreadRadius: 25.0,
            offset: Offset(10.0, 0.5),
          ),
        ],
      ),
      child: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: BrandGradients.navbar,
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 14.0),
                  child: Image.asset(
                    'assets/images/core/logo.png',
                    width: 100.0,
                  ),
                ),
              ],
            )
          : Row(
              children: [
                IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: BrandColors.kLightDark,
                  ),
                ),
              ],
            ),
    );
  }
}
