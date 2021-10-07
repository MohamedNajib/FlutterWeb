import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ContactBackGround extends StatelessWidget {
  final Widget child;
  const ContactBackGround({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90 * SizeConfig.widthMultiplier,
      child: Stack(
        children: [
          Positioned(
            left: LocalStorage().language == 'ar' ? null : 0,
            right: LocalStorage().language == 'ar' ? 0 : null,
            child: WebsafeSvg.asset(
              LocalStorage().language == 'ar'
                  ? Strings.ic_groupba
                  : Strings.ic_groupb,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(
                  vertical: 10 * SizeConfig.heightMultiplier,
                  horizontal: 10 * SizeConfig.heightMultiplier),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
