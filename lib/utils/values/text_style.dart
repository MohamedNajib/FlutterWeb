import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';
import 'colors.dart';
import 'dimens.dart';

class TextStyles {
  static TextStyle cairoSize_m(context) => GoogleFonts.cairo(
        color: AppColors.supTitleColor,
        fontSize: (Responsive.isDesktop(context))
            ? 1 * SizeConfig.textMultiplier
            : (Responsive.isTablet(context))
                ? 1.5 * SizeConfig.textMultiplier
                : 1.6 * SizeConfig.textMultiplier,
        height: 1.0,
      );

  static TextStyle cairoSize_L(context) => GoogleFonts.cairo(
        color: AppColors.yloColor,
        fontWeight: FontWeight.w800,
        fontSize: (Responsive.isDesktop(context))
            ? 1.4 * SizeConfig.textMultiplier
            : (Responsive.isTablet(context))
                ? 2 * SizeConfig.textMultiplier
                : 1.9 * SizeConfig.textMultiplier,
        height: 1.0,
      );

  static TextStyle cairoSize_XL(context) => GoogleFonts.cairo(
        color: AppColors.titleColor,
        fontSize: (Responsive.isDesktop(context))
            ? 1.6 * SizeConfig.textMultiplier
            : (Responsive.isTablet(context))
                ? 2.5 * SizeConfig.textMultiplier
                : 2.5 * SizeConfig.textMultiplier, //40.0,
        fontWeight: FontWeight.w800,
        height: 1.3,
      );

  static TextStyle styleLiteSize_xxxl = TextStyle(
    color: AppColors.whiteColor,
    fontStyle: FontStyle.normal,
    fontSize: Dimens.size_xxxl,
    fontWeight: FontWeight.bold,
  );

  static TextStyle styleDarkSize_xxxl = TextStyle(
    color: AppColors.textBlackColor,
    fontStyle: FontStyle.normal,
    fontSize: Dimens.size_xxxl,
    fontWeight: FontWeight.bold,
  );

  static TextStyle styleLiteSize_xxl = TextStyle(
    color: AppColors.whiteColor,
    fontStyle: FontStyle.normal,
    fontSize: Dimens.size_xxl,
    fontWeight: FontWeight.w700,
  );

  static TextStyle styleDarkSize_xxl = TextStyle(
    color: AppColors.textBlackColor,
    fontStyle: FontStyle.normal,
    fontSize: Dimens.size_xxl,
    fontWeight: FontWeight.w700,
  );

  static TextStyle styleLiteSize_xl = TextStyle(
    color: AppColors.whiteColor,
    fontStyle: FontStyle.normal,
    fontSize: Dimens.size_xl,
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleDarkSize_xl = TextStyle(
    color: AppColors.textBlackColor,
    fontStyle: FontStyle.normal,
    fontSize: Dimens.size_xl,
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleLiteSize_l = TextStyle(
    color: AppColors.whiteColor,
    fontStyle: FontStyle.normal,
    fontSize: Dimens.size_l,
    fontWeight: FontWeight.w500,
  );

  static TextStyle styleDarkSize_l = TextStyle(
    color: AppColors.textBlackColor,
    fontStyle: FontStyle.normal,
    fontSize: Dimens.size_l,
    fontWeight: FontWeight.w500,
  );

  static TextStyle styleLiteSize_m = TextStyle(
    color: AppColors.whiteColor,
    fontStyle: FontStyle.normal,
    fontSize: Dimens.size_m,
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleDarkSize_m = TextStyle(
    color: AppColors.textBlackColor,
    fontStyle: FontStyle.normal,
    fontSize: Dimens.size_m,
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleLiteSize_s = TextStyle(
    color: AppColors.whiteColor,
    fontStyle: FontStyle.normal,
    fontSize: Dimens.size_s,
  );

  static TextStyle styleDarkSize_s = TextStyle(
    color: AppColors.textBlackColor,
    fontStyle: FontStyle.normal,
    fontSize: Dimens.size_s,
  );
}
