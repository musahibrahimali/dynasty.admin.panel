import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';

AppBar navBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      elevation: 0,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 14.0),
                  child: Image.asset(
                    'assets/images/core/logo.png',
                    width: 28.0,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                key.currentState!.openDrawer();
              },
            ),
      backgroundColor: BrandColors.kWhite,
    );
