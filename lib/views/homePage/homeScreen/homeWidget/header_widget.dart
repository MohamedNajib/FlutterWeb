import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            Strings.HeaderOne.tr,
            style: GoogleFonts.cairo(
              color: AppColors.yloColor,
              fontWeight: FontWeight.w900,
              fontSize: 1 * SizeConfig.textMultiplier, // 16
            ),
          ),
          Dimens.heightBoxS,
          Text(
            Strings.HeaderTwo.tr,
            style: GoogleFonts.cairo(
              color: AppColors.titleColor, //Color(0xFFACBAC7),
              fontSize: 2 * SizeConfig.textMultiplier, //40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          Dimens.heightBoxS,
          Text(
            Strings.HeaderThree.tr,
            style: GoogleFonts.cairo(
              color: AppColors.supTitleColor,
              fontSize: (Responsive.isDesktop(context))
                  ? 1 * SizeConfig.textMultiplier
                  : (Responsive.isTablet(context))
                      ? 1.5 * SizeConfig.textMultiplier
                      : 1.5 * SizeConfig.textMultiplier,
              //fontSize: 16.0,
              height: 1.0,
            ),
          ),
          //Dimens.heightBoxS,
          Container(
            child: Wrap(
              children: [
                Text(
                  Strings.HeaderFour.tr,
                  style: GoogleFonts.cairo(
                    color: AppColors.supTitleColor,
                    //fontSize: 16.0,
                    fontSize: (Responsive.isDesktop(context))
                        ? 1 * SizeConfig.textMultiplier
                        : (Responsive.isTablet(context))
                            ? 1.5 * SizeConfig.textMultiplier
                            : 1.5 * SizeConfig.textMultiplier,
                    height: 1.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      Strings.HeaderFive.tr,
                      style: GoogleFonts.cairo(
                        color: Colors.white,
                        fontSize: 16.0,
                        height: 1.5,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Dimens.heightBoxL,
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.yloColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
