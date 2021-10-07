import 'package:flutter/material.dart';
import 'package:flutter_web/utils/langs/app_language_controller.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:flutter_web/views/ourLatestNewsPage/our_latest_news_section.dart';
import 'package:flutter_web/views/servicePage/service.dart';
import 'package:flutter_web/views/whyUsPage/why_us.dart';
import 'package:flutter_web/views/widgets/base_container.dart';
import 'package:get/get.dart';

import '../contact/contactWidget/contact_section.dart';
import 'homeScreen/home.dart';
import 'nav/header.dart';
import 'nav/navController/menu_controller.dart';
import 'nav/nav_widget/mobile_menu.dart';

class HomePage extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  final homeSectionKey = GlobalKey();
  final serviceSectionKey = GlobalKey();
  final whyUsSectionKey = GlobalKey();
  final ourLatestNewsSectionKey = GlobalKey();
  final contactSectionKey = GlobalKey();

  //final homeKey = GlobalKey();

  // Future scrollToItem() async {
  //   final context = homeKey.currentContext!;
  //   await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
  // }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppSettingsController>(
      builder: (controller) {
        return Scaffold(
          key: _controller.scaffoldkey,
          backgroundColor: controller.scaffoldBackgroundColor,
          drawer: MobileMenu(),
          body: GetBuilder<MenuController>(
            builder: (navController) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Header(),
                    Dimens.heightBoxXXXL,
                    Container(key: navController.homeSectionKey, child: Home()),
                    Dimens.heightBoxXXXL,
                    SectionContainer(
                      child: Container(
                        width: double.infinity,
                        height: 1,
                        color: AppColors.backgroundItemColor,
                      ),
                    ),
                    Dimens.heightBoxXXXL,
                    Container(
                        key: navController.serviceSectionKey,
                        child: ServiceSection()),
                    Dimens.heightBoxXXXL,
                    SectionContainer(
                      child: Container(
                        width: double.infinity,
                        height: 1,
                        color: AppColors.backgroundItemColor,
                      ),
                    ),
                    Dimens.heightBoxXXXL,
                    Container(
                        key: navController.whyUsSectionKey,
                        child: WhyUsScreen()),
                    Dimens.heightBoxXXXL,
                    SectionContainer(
                      child: Container(
                        width: double.infinity,
                        height: 1,
                        color: AppColors.backgroundItemColor,
                      ),
                    ),
                    Dimens.heightBoxXXXL,
                    OurLatestNewsSection(),
                    Dimens.heightBoxXXXL,
                    SectionContainer(
                      child: Container(
                        width: double.infinity,
                        height: 1,
                        color: AppColors.backgroundItemColor,
                      ),
                    ),
                    Dimens.heightBoxXXXL,
                    Container(
                        key: navController.contactSectionKey,
                        child: ContactSection()),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
