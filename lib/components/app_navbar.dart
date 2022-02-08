import 'package:badges/badges.dart';
import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
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
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 0.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: BrandColors.kWhite,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            spreadRadius: 2.4,
            offset: Offset(5.0, 0.5),
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
                  children: [
                    MouseRegion(
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
                            colors: BrandGradients.navbar,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: const EdgeInsets.only(left: 14.0),
                        child: Image.asset(
                          'assets/images/core/logo.png',
                          width: 60.0,
                        ),
                      ),
                    ),
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
                        color: BrandColors.kDarkGray,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      "Dynasty",
                      style: GoogleFonts.badScript(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w900,
                        color: BrandColors.kDarkGray,
                      ),
                    ),
                  ],
                ),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings_outlined,
                  color: BrandColors.kBlue,
                ),
              ),
              Badge(
                position: BadgePosition.topEnd(top: -2, end: 3),
                animationDuration: const Duration(milliseconds: 300),
                animationType: BadgeAnimationType.fade,
                badgeColor: BrandColors.kRed,
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
                    color: BrandColors.kBlue,
                  ),
                ),
              ),
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
                  color: BrandColors.kDarkGray,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(4.0),
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  backgroundColor: BrandColors.kGrayWhite,
                  child: Icon(
                    Icons.person_outline,
                    color: BrandColors.kBlue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
