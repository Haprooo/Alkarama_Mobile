import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class SetctionHeader extends StatelessWidget {
  final String title;
  final String? more;
  final Color? color;
  const SetctionHeader({super.key, required this.title, this.color, this.more});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IntrinsicWidth(
            child: Container(
              // constraints: BoxConstraints(maxWidth: screenWidth(1.45)),
              //color: Colors.yellow,
              child: Column(
                children: [
                  FittedBox(
                    child: CustomText(
                      type: TextStyleType.CUSTOM,
                      text: title,
                      fontFamily: "Cairo",
                      textSize: screenWidth(20),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Expanded(
                        flex: 6,
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
          ),
          Spacer(),
          Visibility(
              visible: more != null,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {},
                    child: CustomText(
                      type: TextStyleType.CUSTOM,
                      text: more ?? "",
                      fontFamily: "Cairo",
                      textSize: screenWidth(35),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth(100),
                  ),
                  Image.asset("assets/images/pngs/back-arrow.png")
                ],
              ))
        ],
      ),
    );
  }
}
