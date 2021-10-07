import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:flutter_web/views/widgets/base_container.dart';
import 'package:flutter_web/views/widgets/section_header.dart';
import 'package:get/get.dart';

import 'service_section_item.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          sectionTitle: Strings.ServiceSectionTitle.tr,
          sectionDescription: Strings.ServiceSectionSubTitle.tr,
        ),
        Dimens.heightBoxXL,
        if (Responsive.isDesktop(context))
          SectionContainer(
            child: DesktopService(),
          ),
        if (Responsive.isTablet(context))
          SectionContainer(
            child: DesktopService(), //TabletNav(),
          ),
        if (Responsive.isMobile(context))
          SectionContainer(
            child: MobileService(),
          ),
      ],
    );
  }
}

class DesktopService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      direction: Axis.horizontal,
      spacing: 16.0,
      runSpacing: 16.0,
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ServiceSectionItem(
          icon: Strings.ic_dashboard,
          itemTitle: Strings.ClientDashboard.tr,
          itemDescription: Strings.HeaderThree.tr,
        ),
        //Dimens.widthBoxL,
        ServiceSectionItem(
          icon: Strings.ic_web,
          itemTitle: Strings.WebDevelopment.tr,
          itemDescription: Strings.HeaderThree.tr,
        ),
        //Dimens.widthBoxL,
        ServiceSectionItem(
          icon: Strings.ic_mobile,
          itemTitle: Strings.UniqueAppUI.tr,
          itemDescription: Strings.HeaderThree.tr,
        ),
        //Dimens.widthBoxL,
        ServiceSectionItem(
          icon: Strings.ic_mobile,
          itemTitle: Strings.UniqueAppUI.tr,
          itemDescription: Strings.HeaderThree.tr,
        ),
      ],
    );
  }
}

class MobileService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ServiceSectionItem(
              icon: Strings.ic_dashboard,
              itemTitle: Strings.ClientDashboard.tr,
              itemDescription: Strings.HeaderThree.tr,
            ),
            Dimens.widthBoxM,
            ServiceSectionItem(
              icon: Strings.ic_web,
              itemTitle: Strings.WebDevelopment.tr,
              itemDescription: Strings.HeaderThree.tr,
            ),
          ],
        ),
        Dimens.heightBoxL,
        //
        // Dimens.heightBoxL,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ServiceSectionItem(
              icon: Strings.ic_mobile,
              itemTitle: Strings.UniqueAppUI.tr,
              itemDescription: Strings.HeaderThree.tr,
            ),
            Dimens.widthBoxM,
            ServiceSectionItem(
              icon: Strings.ic_mobile,
              itemTitle: Strings.UniqueAppUI.tr,
              itemDescription: Strings.HeaderThree.tr,
            ),
          ],
        ),
        //Dimens.heightBoxL,
      ],
    );
  }
}
