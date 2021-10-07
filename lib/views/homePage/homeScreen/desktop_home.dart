import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:flutter_web/views/widgets/base_container.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'homeWidget/header_widget.dart';

class DesktopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Center(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: HeaderWidget(),
            ),
            Expanded(
              flex: 1,
              child: WebsafeSvg.asset(Strings.ic_homeImage),
            )
          ],
        ),
      ),
    );
  }
}
