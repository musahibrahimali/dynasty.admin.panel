import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String menuItem;
  final void Function() onTap;

  const HorizontalMenuItem({
    Key? key,
    required this.menuItem,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // width of the screen
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value ? menuController.onHover(menuItem) : menuController.onHover("Not Hovering");
      },
      child: Obx(
        () => Container(
          decoration: BoxDecoration(
            color: menuController.isHovering(menuItem) ? BrandColors.kLightGray.withOpacity(0.1) : Colors.transparent,
          ),
          child: Row(
            children: <Widget>[
              Visibility(
                visible: menuController.isHovering(menuItem) || menuController.isActive(menuItem),
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
                child: Container(
                  width: 6.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: BrandColors.kDarkGray,
                  ),
                ),
              ),
              SizedBox(width: _width / 80.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: menuController.returnIconFor(menuItem),
              ),
              if (!menuController.isActive(menuItem))
                Flexible(
                  child: CustomText(
                    text: menuItem,
                    color: menuController.isHovering(menuItem) ? BrandColors.kDarkGray : BrandColors.kLightGray,
                    weight: FontWeight.w700,
                  ),
                )
              else
                Flexible(
                  child: CustomText(
                    text: menuItem,
                    color: BrandColors.kDarkGray,
                    size: 18.0,
                    weight: FontWeight.w700,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
