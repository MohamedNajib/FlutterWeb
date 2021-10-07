import 'package:flutter/material.dart';
import 'package:flutter_web/utils/values/values.dart';

extension WidgetDecoration on Widget {
  addWidgetDecoration({double borderRadius = 15.0, required bool isDark}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        boxShadow: isDark ? AppColors.blackShadows : AppColors.liteShadows,
      ),
      child: this,
    );
  }
}
