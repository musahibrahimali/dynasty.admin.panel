import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';

class BrandLogo extends StatelessWidget {
  final List<Color>? backgroundColor;
  final double? logoSize;
  final void Function()? onTap;

  const BrandLogo({
    Key? key,
    this.backgroundColor,
    this.logoSize,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: backgroundColor ?? BrandGradients.darken,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: const EdgeInsets.only(left: 14.0),
          child: Image.asset(
            'assets/images/core/logo.png',
            width: logoSize ?? 60.0,
          ),
        ),
      ),
    );
  }
}
