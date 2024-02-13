import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class SetctionHeader extends StatelessWidget {
  final String title;
  final Color? color;
  const SetctionHeader({super.key, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IntrinsicWidth(
          child: Column(
            children: [
              CustomText(
                type: TextStyleType.CUSTOM,
                text: title,
                fontFamily: "Cairo",
                textSize: screenWidth(20), textweight: FontWeight.w400,
              ),
              SizedBox(
                height: 5,
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.main_color),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: color ?? AppColors.secondary_color),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.main_color),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
        Spacer(),
        InkWell(
          onTap: () {},
          child: CustomText(
            textweight: FontWeight.w400,
            type: TextStyleType.CUSTOM,
            text: "مشاهدة المزيد ",
            fontFamily: "Cairo-Regular",
            textSize: screenWidth(30),
          ),
        ),
        Image.asset("assets/images/pngs/back-arrow.png")
      ],
    );
  }
}
