import 'package:flutter/material.dart';

// constant values for most common breakpoints
// const double _kSmallScreenBreakpoint = 360.0;
const double _kMediumScreenBreakpoint = 768.0;
const double _kLargeScreenBreakpoint = 1366.0;

class ResponsiveWidget extends StatelessWidget {
  // the widget that will be shown based on the size of the screen
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  // check the size of the screen and return the widget that should be shown
  // check if the screen is small, medium or large
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < _kMediumScreenBreakpoint;
  }

  // check if the screen is medium or large
  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width <= _kMediumScreenBreakpoint &&
        MediaQuery.of(context).size.width < _kLargeScreenBreakpoint;
  }

  // check if the screen is large
  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= _kLargeScreenBreakpoint;
  }

  @override
  Widget build(BuildContext context) {
    // build layouts based on the screen size
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double _width = constraints.maxWidth;
        if (_width >= _kLargeScreenBreakpoint) {
          return largeScreen;
        } else if (_width < _kLargeScreenBreakpoint && _width >= _kMediumScreenBreakpoint) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
