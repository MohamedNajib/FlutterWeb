import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:flutter_web/views/widgets/custom_shape_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ServiceSectionItem extends StatelessWidget {
  final String icon;
  final String itemTitle;
  final String itemDescription;

  const ServiceSectionItem({
    Key? key,
    required this.icon,
    required this.itemTitle,
    required this.itemDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          width: !(Responsive.isMobile(context))
              ? 30 * SizeConfig.widthMultiplier
              : 40 * SizeConfig.widthMultiplier,
          height: !(Responsive.isMobile(context))
              ? 30 * SizeConfig.widthMultiplier
              : 40 * SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderColor, width: 1),
            borderRadius: BorderRadius.circular(10),
            color: AppColors.backgroundItemColor, //AppColors.navDarkColor,
          ),
          child: Stack(
            children: [
              // Positioned(
              //   left: 200,
              //   bottom: 0,
              //   right: 0,
              //   child: ClipPath(
              //     clipper: CustomLoginShapeClipper6(),
              //     child: Container(
              //       height: 100,
              //       decoration: BoxDecoration(
              //         color: AppColors.yloColor,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //     ),
              //   ),
              // ),
              Positioned(
                left: !(Responsive.isMobile(context))
                    ? 25 * SizeConfig.widthMultiplier
                    : 35 * SizeConfig.widthMultiplier,
                bottom: 0,
                right: 0,
                child: ClipPath(
                  clipper: CustomLoginShapeClipper3(),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(10)),
                      color: AppColors.yloColor,
                      // gradient: LinearGradient(
                      //   colors: [
                      //     AppColors.yloColor.withOpacity(.5),
                      //     AppColors.yloColor.withOpacity(.5),
                      //     AppColors.yloColor.withOpacity(.5),
                      //   ],
                      // ),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 0,
                right: 0,
                top: 16,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WebsafeSvg.asset(
                        icon,
                        width: 12 * SizeConfig.widthMultiplier,
                        height: 12 * SizeConfig.widthMultiplier,
                      ),
                      Dimens.heightBoxS,
                      Text(
                        itemTitle,
                        style: GoogleFonts.cairo(
                          color: AppColors.yloColor,
                          fontWeight: FontWeight.w700,
                          fontSize: ((Responsive.isMobile(context)) ||
                                  (Responsive.isTablet(context)))
                              ? 1.5 * SizeConfig.textMultiplier
                              : 1 * SizeConfig.textMultiplier, // 16
                        ),
                      ),
                      //Dimens.heightBoxS,
                      Text(
                        itemDescription,
                        style: GoogleFonts.cairo(
                          color: AppColors.textWhiteColor,
                          fontSize: (Responsive.isMobile(context))
                              ? 1 * SizeConfig.textMultiplier
                              : 0.8 * SizeConfig.textMultiplier, // 16
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ) /*.addWidgetDecoration(isDark: true)*/,
      ),
    ).moveUpOnHover;
  }
}
