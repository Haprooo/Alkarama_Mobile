import 'package:Alkarama_Mobile/core/enums/bottom_navigation_enum.dart';
import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:Alkarama_Mobile/ui/views/main_view/main_view_widgets/nav_item.dart';

import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  final BottomNavigationEnum selectedView;
  final Function(BottomNavigationEnum, int) onTap;
  const CustomBottomNavigation(
      {super.key, required this.selectedView, required this.onTap});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        NavItem(
          icon: "home_icon",
          text: "الرئيسية",
          isSelected: widget.selectedView == BottomNavigationEnum.HOME,
          onTap: () {
            widget.onTap(BottomNavigationEnum.HOME, 0);
          },
        ),
        NavItem(
          icon: "score_icon",
          text: "النتائج",
          isSelected: widget.selectedView == BottomNavigationEnum.SCORES,
          onTap: () {
            widget.onTap(BottomNavigationEnum.SCORES, 1);
          },
        ),
        InkWell(
          child: Container(
              alignment: Alignment.bottomCenter,
              width: screenWidth(6),
              height: screenWidth(6),
              // color: Colors.green,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Image.asset("assets/images/pngs/score_icon.png",
                  //     color: AppColors.main_color),
                  CustomText(
                    text: "المباريات",
                    type: TextStyleType.CUSTOM,
                    textSize: screenWidth(23),
                    fontFamily: "Cairo",
                    textColor:
                        widget.selectedView == BottomNavigationEnum.MATCHES
                            ? AppColors.secondary_color
                            : AppColors.white_navbar,
                  ),
                ],
              )),
        ),
        NavItem(
          icon: "about_icon",
          text: "عن النادي",
          isSelected: widget.selectedView == BottomNavigationEnum.ABOUT,
          onTap: () {
            widget.onTap(BottomNavigationEnum.ABOUT, 3);
          },
        ),
        NavItem(
          icon: "muisium_icon",
          text: "المتحف",
          isSelected: widget.selectedView == BottomNavigationEnum.MUISIEM,
          onTap: () {
            widget.onTap(BottomNavigationEnum.MUISIEM, 4);
          },
        ),
      ],
    );
  }
}
