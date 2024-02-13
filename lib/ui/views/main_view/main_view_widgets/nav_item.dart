import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

import '../../../../core/enums/text_style_type.dart';
import '../../../shared/colors.dart';

class NavItem extends StatelessWidget {
  final String icon;
  final bool isSelected;
  final String text;
  final Function() onTap;
  const NavItem({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
          alignment: Alignment.bottomCenter,
          width: screenWidth(6),
          height: screenWidth(6),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/pngs/${icon}.png",
                color: isSelected
                    ? AppColors.secondary_color
                    : AppColors.white_navbar,
              ),
              CustomText(
                text: text,
                type: TextStyleType.CUSTOM,
                fontFamily: "Cairo",
                textColor: isSelected
                    ? AppColors.secondary_color
                    : AppColors.white_navbar,
              ),
            ],
          )),
    );
  }
}
