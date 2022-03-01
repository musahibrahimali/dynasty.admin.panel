import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custombutton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final double? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final double? horizontalPad;
  final double? verticalPad;

  const Custombutton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
    this.fontSize,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.letterSpacing,
    this.fontWeight,
    this.horizontalPad,
    this.verticalPad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: verticalPad ?? 10.0,
            horizontal: horizontalPad ?? 50.0,
          ),
          decoration: BoxDecoration(
            color: color ?? BrandColors.kColorDarkGreen,
            borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
            border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: borderWidth ?? 0.0,
            ),
          ),
          child: Text(
            text.toUpperCase(),
            style: GoogleFonts.poppins(
              color: textColor ?? BrandColors.kWhite,
              fontSize: fontSize ?? 20.0,
              letterSpacing: letterSpacing ?? 2.3,
              fontWeight: fontWeight ?? FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
