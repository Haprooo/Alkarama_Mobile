import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class TitelItem extends StatelessWidget {
  final String? title;
  final String title_image;

  const TitelItem({super.key, this.title, required this.title_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(2.4),
      height: screenWidth(2),
      //color: Colors.green,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: screenWidth(2.7),
            height: screenWidth(2),
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(60),
                start: screenWidth(70),
                end: screenWidth(70)),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: AppColors.border_color),
              borderRadius: BorderRadius.circular(30),
              color: AppColors.grey_color2,
            ),
            child: Image.asset(
              "assets/images/pngs/${title_image}.png",
              // scale: 2,
              alignment: Alignment.topCenter,
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/images/pngs/golden_chip.png"),
                  Container(
                    //  color: Colors.green,
                    width: screenWidth(3),
                    padding: EdgeInsetsDirectional.only(top: screenWidth(70)),
                    child: FittedBox(
                      child: CustomText(
                        text: title ?? "",
                        type: TextStyleType.CUSTOM,
                        lineHeight: 1.4,
                        textAlign: TextAlign.center,
                        fontFamily: "Cairo",
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
