import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dynasty_urban_style/index.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: BrandColors.kLightThemePrimaryColor,
    scaffoldBackgroundColor: BrandColors.kLightThemeScaffoldBGColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: BrandColors.kBrandGreenColor,
      secondary: BrandColors.kBlue,
      error: BrandColors.kErrorColor,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
    textTheme: GoogleFonts.interTextTheme(
      Theme.of(context).textTheme.apply(
            bodyColor: BrandColors.kLightThemeNormalTextColor,
          ),
    ),
    hintColor: BrandColors.kLightThemeTextFieldHintColor,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: BrandColors.kLightThemeTextFieldCursorColor,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: BrandColors.kDarkThemePrimaryColor,
    scaffoldBackgroundColor: BrandColors.kDarkThemeScaffoldBGColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: BrandColors.kDarkThemePrimaryColor,
      error: BrandColors.kErrorColor,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
    textTheme: GoogleFonts.interTextTheme(
      Theme.of(context).textTheme.apply(
            bodyColor: BrandColors.kLightThemeNormalTextColor,
          ),
    ),
    hintColor: BrandColors.kDarkThemeTextFieldHintColor,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: BrandColors.kDarkThemeTextFieldCursorColor,
    ),
  );
}
