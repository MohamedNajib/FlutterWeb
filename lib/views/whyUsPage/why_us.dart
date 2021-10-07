import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:flutter_web/views/widgets/base_container.dart';
import 'package:flutter_web/views/widgets/custom_shape_clippers.dart';
import 'package:flutter_web/views/widgets/section_header.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WhyUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          sectionTitle: Strings.WhyUs.tr,
          sectionDescription: Strings.ServiceSectionSubTitle.tr,
        ),
        Dimens.heightBoxXL,
        SectionContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  WhyUsSectionItem(
                    itemTitle: Strings.AwesomeDesign.tr,
                    itemDescription: Strings.ServiceSectionSubTitle.tr,
                    icon: Strings.ic_awesome,
                    isYlo: true,
                  ),
                  Dimens.heightBoxM,
                  WhyUsSectionItem(
                    itemTitle: Strings.EasyCustomise.tr,
                    itemDescription: Strings.ServiceSectionSubTitle.tr,
                    icon: Strings.ic_customise,
                  ),
                  Dimens.heightBoxM,
                  WhyUsSectionItem(
                    itemTitle: Strings.SuperFast.tr,
                    itemDescription: Strings.ServiceSectionSubTitle.tr,
                    icon: Strings.ic_fast,
                  ),
                ],
              ),
              WebsafeSvg.asset(
                Strings.ic_responsive,
              ),
              Column(
                children: [
                  WhyUsSectionItem(
                    itemTitle: Strings.UpdateNotification.tr,
                    itemDescription: Strings.ServiceSectionSubTitle.tr,
                    icon: Strings.ic_notification,
                  ),
                  Dimens.heightBoxM,
                  WhyUsSectionItem(
                    itemTitle: Strings.HighResolution.tr,
                    itemDescription: Strings.ServiceSectionSubTitle.tr,
                    icon: Strings.ic_resolution,
                  ),
                  Dimens.heightBoxM,
                  WhyUsSectionItem(
                    itemTitle: Strings.ExtremeSecurity.tr,
                    itemDescription: Strings.ServiceSectionSubTitle.tr,
                    icon: Strings.ic_security,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class WhyUsSectionItem extends StatelessWidget {
  final String icon;
  final String itemTitle;
  final String itemDescription;
  final bool isYlo;

  const WhyUsSectionItem({
    Key? key,
    required this.icon,
    required this.itemTitle,
    required this.itemDescription,
    this.isYlo = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          width: !(Responsive.isMobile(context))
              ? 40 * SizeConfig.widthMultiplier
              : 40 * SizeConfig.widthMultiplier,
          height: !(Responsive.isMobile(context))
              ? 16 * SizeConfig.widthMultiplier
              : 40 * SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderColor, width: 1),
            borderRadius: BorderRadius.only(
                topLeft: LocalStorage().language == 'ar'
                    ? Radius.circular(50)
                    : Radius.circular(10),
                topRight: LocalStorage().language == 'ar'
                    ? Radius.circular(10)
                    : Radius.circular(50),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
            gradient: !isYlo
                ? null
                : LinearGradient(
                    colors: [
                      const Color(0xFFF8DAA5),
                      const Color(0xFFF8CC7B),
                      const Color(0xFFE6B45A),
                    ],
                    tileMode: TileMode.clamp,
                  ),
            color: isYlo
                ? null
                : AppColors.backgroundItemColor, //AppColors.navDarkColor,
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
                    ? 35 * SizeConfig.widthMultiplier
                    : 35 * SizeConfig.widthMultiplier,
                bottom: 0,
                right: 0,
                child: ClipPath(
                  clipper: CustomLoginShapeClipper3(),
                  child: Container(
                    height: 60,
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
                top: 0,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WebsafeSvg.asset(
                        icon,
                        color: isYlo ? AppColors.darkModeScaffoldColor : null,
                        width: 4 * SizeConfig.widthMultiplier,
                        height: 4 * SizeConfig.widthMultiplier,
                      ),
                      Dimens.widthBoxS,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Dimens.heightBoxS,
                            Text(
                              itemTitle,
                              style: GoogleFonts.cairo(
                                color: isYlo
                                    ? AppColors.darkModeScaffoldColor
                                    : AppColors.yloColor,
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
                              maxLines: 2,
                              style: GoogleFonts.cairo(
                                color: isYlo
                                    ? AppColors.darkModeScaffoldColor
                                    : AppColors.textWhiteColor,
                                fontSize: (Responsive.isMobile(context))
                                    ? 1 * SizeConfig.textMultiplier
                                    : 0.8 * SizeConfig.textMultiplier, // 16
                              ),
                            ),
                          ],
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
