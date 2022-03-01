import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  // state colors
  late Color _signinBackgroundColor;
  late Color _signupBackgroundColor;
  late Color _signinTextColor;
  late Color _signupTextColor;

  // state bools
  bool _isSignin = true;
  bool _isSignup = false;

  @override
  void initState() {
    _isSignin = true;
    _isSignup = false;
    // sign in background and text color
    _signinBackgroundColor = BrandColors.kColorDarkBlue;
    _signinTextColor = BrandColors.kWhite;

    // sign up background color
    _signupBackgroundColor = BrandColors.kColorBackground;
    _signupTextColor = BrandColors.kDarkGray;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // width and height of the screen
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          const FancyPlasma(),
          Obx(
            () => Center(
              child: Container(
                width: _width / 2,
                margin: EdgeInsets.symmetric(
                  vertical: _height / 10,
                ),
                decoration: BoxDecoration(
                  color: themeController.isLightTheme ? BrandColors.kColorBackground : BrandColors.kColorDarkTheme,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        // sign in tab
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _isSignin = true;
                                _isSignup = false;
                                _signinBackgroundColor = BrandColors.kColorDarkBlue;
                                _signupBackgroundColor = BrandColors.kColorBackground;
                                _signinTextColor = BrandColors.kWhite;
                                _signupTextColor = BrandColors.kDarkGray;
                              });
                            },
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              // on enter
                              onEnter: (event) => setState(() {
                                // change the background color
                                _signinBackgroundColor = BrandColors.kBlue;
                                _signinTextColor = BrandColors.kWhite;
                              }),

                              // on exit
                              onExit: (event) => setState(() {
                                // change the background color
                                _signinBackgroundColor =
                                    _isSignin ? BrandColors.kColorDarkBlue : BrandColors.kColorBackground;
                                _signinTextColor = _isSignin ? BrandColors.kWhite : BrandColors.kDarkGray;
                              }),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10.0,
                                  horizontal: 10.0,
                                ),
                                decoration: BoxDecoration(
                                  color: _signinBackgroundColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                  ),
                                  boxShadow: (!themeController.isLightTheme && _isSignin)
                                      ? [
                                          BoxShadow(
                                            color:
                                                themeController.isLightTheme ? BrandColors.kHideGray : Colors.black12,
                                            offset: const Offset(5.0, 0.5),
                                            blurRadius: 10.0,
                                            spreadRadius: 0.5,
                                            blurStyle: BlurStyle.normal,
                                          )
                                        ]
                                      : null,
                                ),
                                child: Center(
                                  child: Text(
                                    "Sign In".toUpperCase(),
                                    style: GoogleFonts.roboto(
                                      color: _signinTextColor,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2.4,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // sign up tab
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _isSignin = false;
                                _isSignup = true;
                                _signinBackgroundColor = BrandColors.kColorBackground;
                                _signupBackgroundColor = BrandColors.kColorDarkBlue;
                                _signinTextColor = BrandColors.kDarkGray;
                                _signupTextColor = BrandColors.kWhite;
                              });
                            },
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              // on enter
                              onEnter: (event) => setState(() {
                                // change the background color
                                _signupBackgroundColor = BrandColors.kBlue;
                                _signupTextColor = BrandColors.kWhite;
                              }),

                              // on exit
                              onExit: (event) => setState(() {
                                // change the background color
                                _signupBackgroundColor =
                                    _isSignup ? BrandColors.kColorDarkBlue : BrandColors.kWhiteGray;
                                _signupTextColor = _isSignup ? BrandColors.kWhite : BrandColors.kDarkGray;
                              }),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10.0,
                                  horizontal: 10.0,
                                ),
                                decoration: BoxDecoration(
                                  color: _signupBackgroundColor,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                  ),
                                  boxShadow: (!themeController.isLightTheme && _isSignup)
                                      ? [
                                          BoxShadow(
                                            color:
                                                themeController.isLightTheme ? BrandColors.kHideGray : Colors.black12,
                                            offset: const Offset(5.0, 0.5),
                                            blurRadius: 10.0,
                                            spreadRadius: 0.5,
                                            blurStyle: BlurStyle.normal,
                                          )
                                        ]
                                      : null,
                                ),
                                child: Center(
                                  child: Text(
                                    "Sign Up".toUpperCase(),
                                    style: GoogleFonts.roboto(
                                      color: _signupTextColor,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2.4,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      // add some animation to the sign in and sign up forms
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        // switchInCurve: Curves.easeIn,
                        // switchOutCurve: Curves.easeOut,
                        child: _isSignin ? const LoginForm() : const RegisterForm(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
