import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/utils/values/values.dart';
import 'package:get/get.dart';

import 'local_storage.dart';

class AppSettingsController extends GetxController {
  String? appLocale = 'ar';
  bool isDarkMode = false;

  @override
  void onInit() async {
    super.onInit();
    LocalStorage localStorage = LocalStorage();

    appLocale = await localStorage.languageSelected;
    localStorage.language = await localStorage.languageSelected;

    isDarkMode = await localStorage.modeSelected;

    Get.updateLocale(Locale(appLocale!));
    Get.changeTheme(isDarkMode ? ThemeData.dark() : ThemeData.light());
    update();
  }

  ///+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+
  ///| ⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐
  ///|  Language Functionality
  ///+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+
  void changeLanguage(String? type) async {
    LocalStorage localStorage = LocalStorage();

    if (appLocale == type) {
      return;
    }
    appLocale = type;
    localStorage.language = type;
    localStorage.saveLanguageToDisk(type);
    Get.updateLocale(Locale(type!));
    update();
  }

  ///+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+
  ///| ⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐
  ///|  Mode Functionality
  ///+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+

  Color get scaffoldBackgroundColor => isDarkMode
      ? AppColors.darkModeScaffoldColor
      : AppColors.lightModeScaffoldColor;

  Color get mainTextColor => isDarkMode
      ? AppColors.lightModeScaffoldColor
      : AppColors.darkModeScaffoldColor;

  Color get navColor =>
      isDarkMode ? AppColors.navDarkColor : AppColors.navLiteColor;

  void changeMode(bool newMode) async {
    LocalStorage localStorage = LocalStorage();

    if (newMode == isDarkMode) {
      return;
    }
    isDarkMode = newMode;
    localStorage.saveModeToDisk(newMode);
    Get.changeTheme(isDarkMode ? ThemeData.dark() : ThemeData.light());

    update();
  }

//   ///
//   final homeSectionKey = GlobalKey();
//   final serviceSectionKey = GlobalKey();
//   final whyUsSectionKey = GlobalKey();
//   final ourLatestNewsSectionKey = GlobalKey();
//   final contactSectionKey = GlobalKey();
//
//   Future scrollToItem({required Sections section}) async {
//     var context;
//     switch (section) {
//       case Sections.HOME:
//         homeSectionKey.currentContext!;
//         break;
//       case Sections.SERVICE:
//         serviceSectionKey.currentContext!;
//         break;
//       case Sections.WHY_US:
//         whyUsSectionKey.currentContext!;
//         break;
//       case Sections.OUR_LATEST_NEWS:
//         ourLatestNewsSectionKey.currentContext!;
//         break;
//       case Sections.CONTACT:
//         contactSectionKey.currentContext!;
//         break;
//     }
//     await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
//   }
}
//
// enum Sections { HOME, SERVICE, WHY_US, OUR_LATEST_NEWS, CONTACT }
