import 'package:flutter/material.dart';
import 'package:flutter_web/utils/langs/app_language_controller.dart';
import 'package:get/get.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;

  const BaseScaffold({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppSettingsController>(
      builder: (controller) {
        return Scaffold(
          key: key,
          backgroundColor: controller.scaffoldBackgroundColor,
          body: SafeArea(
            child: child,
          ),
        );
      },
    );
  }
}
