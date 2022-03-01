import 'package:flutter/material.dart';
import 'package:dynasty_urban_style/index.dart';
import 'package:get/get.dart';

class VerticalMenuItem extends StatelessWidget {
  final String menuItem;
  final void Function() onTap;

  const VerticalMenuItem({
    Key? key,
    required this.menuItem,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value ? menuController.onHover(menuItem) : menuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(menuItem) ? BrandColors.kLightGray.withOpacity(0.1) : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(menuItem) || menuController.isActive(menuItem),
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  width: 3.0,
                  height: 72.0,
                  color: BrandColors.kDarkGray,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
