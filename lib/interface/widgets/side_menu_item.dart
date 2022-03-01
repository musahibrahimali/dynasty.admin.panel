import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final void Function() onTap;

  const SideMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenuItem(
        menuItem: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItem(
        menuItem: itemName,
        onTap: onTap,
      );
    }
  }
}
