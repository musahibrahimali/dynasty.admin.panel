import 'package:badges/badges.dart';
import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final BuildContext context;
  const NavBar({
    Key? key,
    required this.scaffoldKey,
    required this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 0.0,
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          color: themeController.isLightTheme() ? BrandColors.kColorBackground : BrandColors.kColorDarkBlue,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
              spreadRadius: 1.0,
              offset: Offset(4.0, 0.5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            !ResponsiveWidget.isSmallScreen(context)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      BrandLogo(),
                    ],
                  )
                : Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          scaffoldKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: themeController.isLightTheme() ? BrandColors.kDarkGray : BrandColors.kWhite,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        "Dashboard",
                        style: GoogleFonts.montserrat(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
                          color: themeController.isLightTheme() ? BrandColors.kColorDarkBlue : BrandColors.kWhite,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ],
                  ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // switch between light and dark mode
                Row(
                  children: <Widget>[
                    ObxValue(
                      (data) => Switch(
                        value: themeController.isLightTheme(),
                        onChanged: (val) {
                          themeController.toggleTheme();
                          Get.changeThemeMode(
                            themeController.isLightTheme() ? ThemeMode.light : ThemeMode.dark,
                          );
                        },
                      ),
                      false.obs,
                    ),
                    // toogle icons
                    Obx(
                      () => IconButton(
                        onPressed: () {
                          // update the get material theme controller
                          themeController.toggleTheme();
                        },
                        icon: themeController.isLightTheme()
                            ? Icon(
                                Icons.wb_sunny,
                                color:
                                    themeController.isLightTheme() ? BrandColors.kDarkGray : BrandColors.kColorDarkBlue,
                              )
                            : Icon(
                                Icons.brightness_3,
                                color: BrandColors.kWhiteGray,
                              ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25.0, right: 15.0),
                  width: 1.0,
                  height: 22.0,
                  color: themeController.isLightTheme() ? BrandColors.kLightGray : BrandColors.kWhiteGray,
                ),
                // settings
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings_outlined,
                    color: themeController.isLightTheme() ? BrandColors.kColorDarkBlue : BrandColors.kWhiteGray,
                  ),
                ),
                // badges (notifcation)
                Badge(
                  position: BadgePosition.topEnd(top: -2, end: 3),
                  animationDuration: const Duration(milliseconds: 300),
                  animationType: BadgeAnimationType.fade,
                  badgeColor: BrandColors.kColorRed,
                  badgeContent: Text(
                    '3',
                    style: GoogleFonts.poppins(
                      fontSize: 10.0,
                      color: BrandColors.kWhite,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none,
                      color: themeController.isLightTheme() ? BrandColors.kColorDarkBlue : BrandColors.kWhiteGray,
                    ),
                  ),
                ),
                // user and user name
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 25.0, right: 15.0),
                        width: 1.0,
                        height: 22.0,
                        color: BrandColors.kLightGray,
                      ),
                      Text(
                        "Nhana",
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunito(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: themeController.isLightTheme() ? BrandColors.kBlue : BrandColors.kWhiteGray,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(4.0),
                        padding: const EdgeInsets.all(4.0),
                        child: CircleAvatar(
                          backgroundColor:
                              themeController.isLightTheme() ? BrandColors.kGrayWhite : BrandColors.kWhiteGray,
                          child: Icon(
                            Icons.person_outline,
                            color: themeController.isLightTheme() ? BrandColors.kColorDarkBlue : BrandColors.kWhiteGray,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
