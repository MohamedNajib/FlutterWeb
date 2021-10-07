import 'package:flutter/material.dart';
import 'package:flutter_web/utils/langs/app_language_controller.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:flutter_web/views/homePage/nav/nav_widget/change_language_widget.dart';
import 'package:flutter_web/views/homePage/nav/nav_widget/logo_widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navController/menu_controller.dart';

class MobileMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppSettingsController>(builder: (controller) {
      return Drawer(
        child: Container(
          color: controller.navColor,
          child: Obx(
            () => ListView(
              children: [
                DrawerHeader(child: LogoWidget()
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 16),
                    //   child: WebsafeSvg.asset(Strings.ic_logo),
                    // ),
                    ),
                ...List.generate(_controller.menuItems.length + 1, (index) {
                  return index < _controller.menuItems.length
                      ? DrawerItem(
                          isActive: index == _controller.selectedIndex,
                          title: _controller.menuItems[index].itemName,
                          press: () {
                            _controller.setMenuIndex(index,
                                section: _controller.menuItems[index].sections);
                          },
                        )
                      : Column(
                          children: [
                            Dimens.heightBoxXXL,
                            ChangeLanguageWidget(),
                          ],
                        );
                }),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: isActive ? AppColors.yloColor : Colors.transparent,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          selected: isActive,
          onTap: press,
          title: GetBuilder<AppSettingsController>(
            builder: (controller) {
              return Row(
                children: [
                  Icon(Icons.home),
                  Dimens.widthBoxS,
                  Text(
                    title,
                    style: GoogleFonts.varelaRound(
                      color: controller.mainTextColor,
                      fontSize: 16.0,
                      fontWeight:
                          isActive ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
