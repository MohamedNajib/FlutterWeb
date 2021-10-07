import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'contactWidget.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: ContactBackGround(
          child: Column(
            children: [
              if (Responsive.isDesktop(context)) DesktopContact(),
              if (Responsive.isTablet(context)) DesktopContact(),
              if (Responsive.isMobile(context)) MobileContact(),
            ],
          ),
        ),
      ),
    );
  }
}

class DesktopContact extends StatelessWidget {
  const DesktopContact({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContactTitle(),
                Dimens.heightBoxL,
                ContactForm(),
              ],
            ),
          ),
        ),
        Dimens.widthBoxS,
        Expanded(
          flex: 1,
          child: WebsafeSvg.asset(
            Strings.ic_contuct,
          ),
        ),
      ],
    );
  }
}

class MobileContact extends StatelessWidget {
  const MobileContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactTitle(),
        Dimens.heightBoxL,
        ContactForm(),
      ],
    );
  }
}
