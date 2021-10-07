import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/utils/langs/app_language_controller.dart';
import 'package:flutter_web/utils/responsive/responsive.dart';
import 'package:flutter_web/views/homePage/nav/desktop_nav.dart';
import 'package:flutter_web/views/homePage/nav/mobile_nav.dart';
import 'package:flutter_web/views/homePage/nav/tablet_nav.dart';
import 'package:flutter_web/views/widgets/base_container.dart';
import 'package:get/get.dart';

const kDefaultPadding = 20.0;

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppSettingsController>(
      builder: (controller) {
        return Container(
          width: double.infinity,
          color: controller.navColor,
          child: SafeArea(
            child: Column(
              children: [
                if (Responsive.isDesktop(context))
                  SectionContainer(
                    child: DesktopNav(),
                  ),
                if (Responsive.isTablet(context))
                  SectionContainer(
                    child: TabletNav(), //TabletNav(),
                  ),
                if (Responsive.isMobile(context))
                  SectionContainer(
                    child: MobileNav(),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
