import 'package:flutter/material.dart';
import 'package:flutter_web/utils/langs/app_language_controller.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:flutter_web/views/homePage/nav/navController/menu_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'nav_widget/change_language_widget.dart';
import 'nav_widget/logo_widget.dart';
import 'nav_widget/ui_mode_widget.dart';

class DesktopNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MenuController _controller = Get.put(MenuController());
    return GetBuilder<AppSettingsController>(builder: (controller) {
      return Row(
        children: [
          LogoWidget(),
          Expanded(
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: List.generate(
                  _controller.menuItems.length,
                  (index) => WebMenuItem(
                    text: _controller.menuItems[index].itemName,
                    isActive: index == _controller.selectedIndex,
                    press: () {
                      _controller.setMenuIndex(index,
                          section: _controller.menuItems[index].sections);
                      _controller.scrollToSection(
                          section: _controller.menuItems[index].sections);
                    },
                  ),
                ),
              ), // varelaRound
            ),
          ),
          UiModeWidget(),
          Dimens.widthBoxS,
          ChangeLanguageWidget(),
        ],
      );
    });
  }
}

class WebMenuItem extends StatefulWidget {
  const WebMenuItem({
    Key? key,
    required this.isActive,
    required this.text,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  _WebMenuItemState createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return AppColors.yloColor;
    } else if (!widget.isActive & _isHover) {
      return AppColors.yloColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: EdgeInsets.symmetric(horizontal: 16),
          padding: EdgeInsets.symmetric(vertical: 16 / 2),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: _borderColor(), width: 3),
            ),
          ),
          child: GetBuilder<AppSettingsController>(
            builder: (controller) {
              return Text(
                widget.text,
                style: GoogleFonts.cairo(
                  color: controller.mainTextColor,
                  fontSize: 16.0,
                  fontWeight:
                      widget.isActive ? FontWeight.bold : FontWeight.normal,
                ),
              );
            },
          )), // varelaRound
    );
  }
}
