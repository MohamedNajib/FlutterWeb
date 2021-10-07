import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/utils/langs/app_language_controller.dart';
import 'package:get/get.dart';

class UiModeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppSettingsController>(
      builder: (controller) {
        return IconButton(
          icon: controller.isDarkMode
              ? Icon(CupertinoIcons.brightness, color: controller.mainTextColor)
              : Icon(
                  CupertinoIcons.moon_stars,
                  color: controller.mainTextColor,
                ),
          onPressed: () {
            controller.changeMode(!controller.isDarkMode);
          },
        );
      },
    );
  }
}
