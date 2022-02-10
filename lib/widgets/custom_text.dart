import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final TextAlign? align;

  const CustomText({
    Key? key,
    required this.text,
    this.size,
    this.color,
    this.weight,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align ?? TextAlign.start,
      overflow: TextOverflow.ellipsis, // hide extra text if space is not enough
      style: GoogleFonts.nunito(
        fontSize: size ?? 16.0,
        color: color ?? BrandColors.kLightGray,
        fontWeight: weight ?? FontWeight.normal,
      ),
    );
  }
}
