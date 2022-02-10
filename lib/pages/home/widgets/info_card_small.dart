import 'package:flutter/material.dart';
import 'package:dynasty_urban_style/index.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final bool isActive;
  final void Function() onTap;

  const InfoCardSmall({
    Key? key,
    required this.title,
    required this.value,
    this.isActive = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: BrandColors.kWhite,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: isActive ? BrandColors.kColorBlue : BrandColors.kLightGray,
                width: 0.5,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: title,
                  size: 24.0,
                  weight: FontWeight.w300,
                  color: isActive ? BrandColors.kColorBlue : BrandColors.kLightGray,
                ),
                CustomText(
                  text: value,
                  size: 24.0,
                  weight: FontWeight.bold,
                  color: isActive ? BrandColors.kColorBlue : BrandColors.kLightGray,
                )
              ],
            )),
      ),
    );
  }
}
