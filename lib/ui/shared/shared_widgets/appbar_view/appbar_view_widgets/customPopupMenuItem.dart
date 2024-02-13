import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class CustomPopupMenuItem extends StatelessWidget {
  final String icon;
  final String text;
  const CustomPopupMenuItem(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(2.5),
      height: screenWidth(8.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.secondary_color,
      ),
      child: UnconstrainedBox(
        child: Container(
          width: screenWidth(2.6),
          height: screenWidth(8.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.main_color,
          ),
          alignment: AlignmentDirectional.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/images/pngs/${icon}.png",
                //scale: 1.3,
              ),
              CustomText(
                type: TextStyleType.CUSTOM,
                text: text,
                fontFamily: "Cairo",
                textColor: AppColors.white_color,
                textweight: FontWeight.w700,
                textSize: screenWidth(25),
              ),
              SizedBox(),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
