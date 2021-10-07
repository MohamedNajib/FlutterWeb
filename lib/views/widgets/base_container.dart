import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';

class SectionContainer extends StatelessWidget {
  final Widget? child;

  const SectionContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: Dimens.maxScreenWidth),
      padding:
          EdgeInsets.symmetric(vertical: Dimens.phS, horizontal: Dimens.pwL),
      child: child,
    );
  }
}
