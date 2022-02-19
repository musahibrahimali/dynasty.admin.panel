import 'package:flutter/material.dart';
import 'package:dynasty_urban_style/index.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController emailController;
  final double? cursorWidth;
  final Color? cursorColor;
  final double? fontSize;
  final TextInputType? keyboardType;
  final bool? autoFocus;
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? labelColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final bool? isObscured;
  final void Function(String)? onSubmit;

  const CustomFormField({
    Key? key,
    required this.emailController,
    required this.label,
    this.cursorWidth,
    this.fontSize,
    this.cursorColor,
    this.keyboardType,
    this.autoFocus,
    this.prefixIcon,
    this.suffixIcon,
    this.labelColor,
    this.borderColor,
    this.focusedBorderColor,
    this.isObscured,
    this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus ?? false,
      obscureText: isObscured ?? false,
      obscuringCharacter: '*',
      controller: emailController,
      keyboardType: keyboardType ?? TextInputType.text,
      cursorColor: cursorColor ?? BrandColors.kDarkGray,
      cursorWidth: cursorWidth ?? 1.0,
      keyboardAppearance: themeController.isLightTheme ? Brightness.light : Brightness.dark,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.lato(
          fontSize: fontSize ?? 14.0,
          fontWeight: FontWeight.w500,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: borderColor ?? BrandColors.kDarkGray,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: focusedBorderColor ?? BrandColors.kColorDarkBlue,
            width: 1.0,
          ),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Invalid Input';
        }
        return null;
      },
      onFieldSubmitted: onSubmit,
    );
  }
}
