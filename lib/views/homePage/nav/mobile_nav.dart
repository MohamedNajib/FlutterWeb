import 'package:flutter/material.dart';
import 'package:flutter_web/utils/langs/app_language_controller.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:flutter_web/views/homePage/nav/navController/menu_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'nav_widget/ui_mode_widget.dart';

class MobileNav extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppSettingsController>(
      builder: (controller) {
        return Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                _controller.openOrCloseDrawer();
              },
            ),
            Dimens.widthBoxL,
            Expanded(
                child: Container(
              child: Text(
                Strings.Home.tr,
                style: GoogleFonts.cairo(
                  color: controller.mainTextColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            UiModeWidget(),
          ],
        );
      },
    );
  }
}
