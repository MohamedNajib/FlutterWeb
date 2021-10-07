import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  AppColors._();
  static const Color lightModeScaffoldColor =
      const Color.fromRGBO(249, 249, 249, 1);
  // static const Color darkModeScaffoldColor = const Color(0xFF0E1117);
  // static const Color darkModeScaffoldColor = const Color(0xFF545d68);
  static const Color darkModeScaffoldColor = const Color(0xFF22272e);
  // static const Color darkModeScaffoldColor = const Color(0xFF1e2329);

  static const Color navDarkColor = const Color(0xFF161B22);
  static const Color navLiteColor = const Color(0xFFE5E5E5);

  static const Color textBlackColor = const Color(0xFF181E21);
  // static const Color textWhiteColor = const Color(0xFFE5E5E5);
  // static const Color textWhiteColor = const Color(0xFFcdd9e5);
  static const Color textWhiteColor = const Color(0xFFadbac7);
  static const Color borderColor = const Color(0xFF636e7b);
  static const Color backgroundItemColor = const Color(0xFF2d333b);

  static const Color yloColor = const Color(0xFFE6B45A);
  static Color titleColor = const Color(0xFFFFFFFF).withOpacity(0.8);
  static const Color supTitleColor = const Color.fromRGBO(166, 177, 187, 1);
  //
  // static const Color directColor = const Color(0xFF185ADB);
  // static const Color directColor = const Color(0xFF5C33F6);
  static const Color directColor = const Color(0xFF4F81C7);
  static const Color purchaseOrdersColor = const Color(0xFF8AB6D6);
  static const Color freeColor = const Color(0xFF8B5E83);
  // static const Color freeCustomColor = const Color(0xFF47597E);
  static const Color freeCustomColor = const Color(0xFFAC8DAF);
  static const Color orderFromSupplierColor = const Color(0xFFD8C292);

  static const Color receivingVegetablesColor = const Color(0xFF4E8D7C);
  static const Color vegetableReturnColor = const Color(0xFFC05555);

  //home
  static const Color receiptsColor = const Color(0xFFF5CEBE);
  static const Color itemsCheckColor = const Color(0xFF0A81AB);
  static const Color storesColor = const Color(0xFF325288);
  static const Color returnsColor = const Color(0xFFC75643);
  // static const Color returnsColor = const Color(0xFFF0EBCC);
  static const Color damagedColor = const Color(0xFFC64756);
  static const Color optionsColor = const Color(0xFF7579E7);

  static const Color addButtonColor = const Color(0xFF3EDBF0);
  static const Color saveButtonColor = const Color(0xFFF5A962);
  static const Color printButtonColor = const Color(0xFF303960);

  static const Color lightModePrimaryColor = const Color(0xff25727A);

  static const Color whiteColor = const Color(0xFFFFFFFF);

  static const Color hintLiteColor = const Color(0xFFF3F4ED);
  static const Color grayColor = const Color(0xFFA7BBC7);

  static const Color kGrey = const Color(0xFFF4F5F7);
  static const Color kBlue = const Color(0xFF3F51B5);
  static const Color kBlack = const Color(0xFF2D3243);

  static Color scaffoldColor() =>
      Get.isDarkMode ? darkModeScaffoldColor : lightModeScaffoldColor;

  static List<BoxShadow> blackShadows = [
    BoxShadow(
      color: Colors.black38,
      blurRadius: 5.0,
      offset: Offset(7, 7),
    )
  ];

  static List<BoxShadow> liteShadows = [
    BoxShadow(
      color: Colors.white54.withOpacity(0.1),
      blurRadius: 5.0,
      offset: Offset(7, 7),
    )
  ];

  static List<BoxShadow> shadows0 = [
    BoxShadow(
      color: Colors.black38,
      blurRadius: 0.0,
      offset: Offset(0, 0),
    )
  ];

  static List<BoxShadow> whitShadows = [
    BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3), // changes position of shadow
    )
  ];

  static Color primaryWhite = Color(0xFFCADCED);
  // static Color primaryWhite = Colors.indigo[100];

  static List<BoxShadow> neumorpShadow = [
    BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: -5,
        offset: Offset(-5, -5),
        blurRadius: 30),
    BoxShadow(
        color: Colors.blue[900]!.withOpacity(.2),
        spreadRadius: 2,
        offset: Offset(7, 7),
        blurRadius: 20)
  ];
}
