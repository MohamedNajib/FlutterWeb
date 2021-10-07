import 'package:flutter/material.dart';
import 'package:flutter_web/utils/langs/app_language_controller.dart';
import 'package:flutter_web/utils/responsive/responsive.dart';
import 'package:get/get.dart';

class ChangeLanguageWidget extends StatelessWidget {
  const ChangeLanguageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppSettingsController>(builder: (controller) {
      return ElevatedButton(
        onPressed: () {
          if (controller.appLocale == 'en') {
            controller.changeLanguage('ar');
          } else {
            controller.changeLanguage('en');
          }
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: 16 * 1.5,
            //TODO:
            vertical: 16 / (Responsive.isDesktop(context) ? 1 : 2),
          ),
        ),
        child: Text("${(controller.appLocale == 'en') ? 'عربي' : 'English'}"),
      );
    });
  }
}
