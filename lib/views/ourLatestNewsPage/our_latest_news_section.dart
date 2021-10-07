import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:flutter_web/views/widgets/base_container.dart';
import 'package:flutter_web/views/widgets/custom_shape_clippers.dart';
import 'package:flutter_web/views/widgets/section_header.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';

class OurLatestNewsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          sectionTitle: Strings.ServiceSectionTitle.tr,
          sectionDescription: Strings.ServiceSectionSubTitle.tr,
        ),
        Dimens.heightBoxXL,
        if (Responsive.isDesktop(context)) MobileOurLatestNews(),
        if (Responsive.isTablet(context)) MobileOurLatestNews(),
        if (Responsive.isMobile(context)) MobileOurLatestNews(),
      ],
    );
  }
}

class DesktopOurLatestNews extends StatelessWidget {
  const DesktopOurLatestNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MobileOurLatestItem(
            itemDescription:
                'New Item One  One New Item One  One New Item One New Item One New Item One One New Item One..',
            itemTitle: 'New Item One',
          ),
          MobileOurLatestItem(
            itemDescription:
                'New Item One  One New Item One  One New Item One New Item One New Item One One New Item One..',
            itemTitle: 'New Item Two',
          ),
          MobileOurLatestItem(
            itemDescription:
                'New Item One  One New Item One  One New Item One New Item One New Item One One New Item One..',
            itemTitle: 'New Item Three',
          ),
          MobileOurLatestItem(
            itemDescription:
                'New Item One  One New Item One  One New Item One New Item One New Item One One New Item One..',
            itemTitle: 'New Item Four',
          ),
        ],
      ),
    );
  }
}

class MobileOurLatestNews extends StatelessWidget {
  const MobileOurLatestNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        direction: Axis.horizontal,
        spacing: 16.0,
        runSpacing: 16.0,
        children: [
          MobileOurLatestItem(
            itemDescription:
                'New Item One  One New Item One  One New Item One New Item One New Item One One New Item One..',
            itemTitle: 'New Item One',
          ),
          MobileOurLatestItem(
            itemDescription:
                'New Item One  One New Item One  One New Item One New Item One New Item One One New Item One..',
            itemTitle: 'New Item Two',
          ),
          MobileOurLatestItem(
            itemDescription:
                'New Item One  One New Item One  One New Item One New Item One New Item One One New Item One..',
            itemTitle: 'New Item Three',
          ),
          MobileOurLatestItem(
            itemDescription:
                'New Item One  One New Item One  One New Item One New Item One New Item One One New Item One..',
            itemTitle: 'New Item Four',
          ),
        ],
      ),
    );
  }
}

class MobileOurLatestItem extends StatelessWidget {
  // final String icon;
  final String itemTitle;
  final String itemDescription;

  const MobileOurLatestItem({
    Key? key,
    //required this.icon,
    required this.itemTitle,
    required this.itemDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          width: !(Responsive.isMobile(context))
              ? 34 * SizeConfig.widthMultiplier
              : 40 * SizeConfig.widthMultiplier,
          height: (Responsive.isDesktop(context))
              ? 46 * SizeConfig.widthMultiplier
              : (Responsive.isTablet(context))
                  ? 44 * SizeConfig.widthMultiplier
                  : 53 * SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderColor, width: 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
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
                    ? 30 * SizeConfig.widthMultiplier
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
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WebsafeSvg.asset(
                        Strings.ic_news,
                        //color: AppColors.darkModeScaffoldColor,
                        // width: 4 * SizeConfig.widthMultiplier,
                        // height: 4 * SizeConfig.widthMultiplier,
                      ),
                      Dimens.heightBoxS,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Dimens.heightBoxS,
                            Text(
                              itemTitle,
                              style:
                                  // GoogleFonts.cairo(
                                  //   color: AppColors.yloColor,
                                  //   fontWeight: FontWeight.w700,
                                  //   fontSize: ((Responsive.isMobile(context)) ||
                                  //           (Responsive.isTablet(context)))
                                  //       ? 1.5 * SizeConfig.textMultiplier
                                  //       : 1 * SizeConfig.textMultiplier, // 16
                                  // ),
                                  TextStyles.cairoSize_L(context),
                              // GoogleFonts.cairo(
                              //   color: AppColors.yloColor,
                              //   fontWeight: FontWeight.w700,
                              //   fontSize: ((Responsive.isMobile(context)) ||
                              //           (Responsive.isTablet(context)))
                              //       ? 1.5 * SizeConfig.textMultiplier
                              //       : 1 * SizeConfig.textMultiplier, // 16
                              // ),
                            ),
                            Dimens.heightBoxS,
                            Text(
                              itemDescription,
                              //maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  // GoogleFonts.cairo(
                                  //   color: AppColors.textWhiteColor,
                                  //   fontSize: (Responsive.isMobile(context))
                                  //       ? 1 * SizeConfig.textMultiplier
                                  //       : 0.8 * SizeConfig.textMultiplier, // 16
                                  // ),
                                  TextStyles.cairoSize_m(context),
                              // GoogleFonts.cairo(
                              //   color: AppColors.textWhiteColor,
                              //   fontSize: (Responsive.isMobile(context))
                              //       ? 1 * SizeConfig.textMultiplier
                              //       : 0.8 * SizeConfig.textMultiplier, // 16
                              // ),
                            ),
                            Dimens.heightBoxS,
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColors.yloColor, width: 1),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                padding: EdgeInsets.symmetric(
                                    horizontal: 26, vertical: 16),
                                child: Text(
                                  Strings.ReadDetails.tr,
                                  style: TextStyles.cairoSize_m(context)
                                      .copyWith(color: AppColors.yloColor),
                                ),
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
