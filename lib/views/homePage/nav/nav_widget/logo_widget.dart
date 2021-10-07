import 'package:flutter/material.dart';
import 'package:flutter_web/utils/langs/app_language_controller.dart';
import 'package:flutter_web/utils/responsive/responsive.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppSettingsController>(builder: (controller) {
      return Row(
        children: [
          // WebsafeSvg.asset(Strings.ic_logo, width: 50, height: 50),
          Image(
            image: AssetImage(Strings.ic_logo),
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          Dimens.widthBoxS,
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: Strings.BusinessConcept.tr,
                  style: GoogleFonts.orbitron(
                    color: controller.mainTextColor,
                    fontSize: (Responsive.isDesktop(context)) ? 20.0 : 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ".",
                  style: GoogleFonts.orbitron(
                    color: AppColors.yloColor,
                    fontSize: (Responsive.isDesktop(context)) ? 20.0 : 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
