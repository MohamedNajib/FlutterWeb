import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:get/get.dart';

class ContactTitle extends StatelessWidget {
  const ContactTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.GetInTouch.tr,
          textAlign: TextAlign.center,
          style: TextStyles.cairoSize_XL(context)
              .copyWith(color: AppColors.yloColor),
        ),
        Dimens.heightBoxS,
        Text(
          Strings.ContactDisc.tr,
          textAlign: TextAlign.center,
          style: TextStyles.cairoSize_m(context)
              .copyWith(color: AppColors.supTitleColor, fontSize: 12),
        ),
      ],
    );
  }
}
