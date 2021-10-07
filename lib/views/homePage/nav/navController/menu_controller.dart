import 'package:flutter/material.dart';
import 'package:flutter_web/models/nav_model.dart';
import 'package:flutter_web/utils/langs/langs.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  int mSelectedIndex = 0;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;

  List<NavItemModel> get menuItems => [
        NavItemModel(itemName: Strings.Home.tr, sections: Sections.HOME),
        NavItemModel(itemName: Strings.Services.tr, sections: Sections.SERVICE),
        NavItemModel(itemName: Strings.WhyUs.tr, sections: Sections.WHY_US),
        NavItemModel(itemName: Strings.OurGoals.tr, sections: Sections.NONE),
        NavItemModel(
            itemName: Strings.OurPortfolio.tr, sections: Sections.NONE),
        NavItemModel(itemName: Strings.OurClient.tr, sections: Sections.NONE),
        NavItemModel(
            itemName: Strings.ContactUs.tr, sections: Sections.CONTACT),
      ];

  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  final homeSectionKey = GlobalKey();
  final serviceSectionKey = GlobalKey();
  final whyUsSectionKey = GlobalKey();
  final ourLatestNewsSectionKey = GlobalKey();
  final contactSectionKey = GlobalKey();

  void setMenuIndex(int index, {required Sections section}) {
    _selectedIndex.value = index;
    //scrollToItem(section: section);
  }

  Future scrollToSection({required Sections section}) async {
    var context;
    switch (section) {
      case Sections.HOME:
        context = homeSectionKey.currentContext;
        break;
      case Sections.SERVICE:
        context = serviceSectionKey.currentContext;
        break;
      case Sections.WHY_US:
        context = whyUsSectionKey.currentContext;
        break;
      case Sections.OUR_LATEST_NEWS:
        context = ourLatestNewsSectionKey.currentContext;
        break;
      case Sections.CONTACT:
        context = contactSectionKey.currentContext;
        break;
      case Sections.NONE:
        break;
    }
    if (section != Sections.NONE)
      await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));

    update();
  }
}
