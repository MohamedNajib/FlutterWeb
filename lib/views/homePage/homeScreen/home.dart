import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:flutter_web/views/widgets/base_container.dart';

import 'desktop_home.dart';
import 'mobile_home_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          if (Responsive.isDesktop(context))
            SectionContainer(
              child: DesktopHome(),
            ),
          if (Responsive.isTablet(context))
            SectionContainer(
              child: DesktopHome(), //TabletNav(),
            ),
          if (Responsive.isMobile(context))
            SectionContainer(
              child: MobileHome(),
            ),
        ],
      ),
    );
  }
}
