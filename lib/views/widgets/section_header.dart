import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

////////
///////
import 'base_container.dart';

class SectionHeader extends StatelessWidget {
  final String sectionTitle;
  final String sectionDescription;

  const SectionHeader({
    Key? key,
    required this.sectionTitle,
    required this.sectionDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Column(
        children: [
          Text(
            sectionTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.cairo(
              color: AppColors.titleColor, //Color(0xFFACBAC7),
              fontSize: (Responsive.isDesktop(context))
                  ? 1.6 * SizeConfig.textMultiplier
                  : (Responsive.isTablet(context))
                      ? 2.5 * SizeConfig.textMultiplier
                      : 2.5 * SizeConfig.textMultiplier, //40.0,
              fontWeight: FontWeight.w800,
              height: 1.3,
            ),
          ),
          Dimens.heightBoxS,
          Text(
            sectionDescription,
            textAlign: TextAlign.center,
            style: GoogleFonts.cairo(
              color: AppColors.supTitleColor,
              fontSize: (Responsive.isDesktop(context))
                  ? 1 * SizeConfig.textMultiplier
                  : (Responsive.isTablet(context))
                      ? 1.5 * SizeConfig.textMultiplier
                      : 1.5 * SizeConfig.textMultiplier,
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
