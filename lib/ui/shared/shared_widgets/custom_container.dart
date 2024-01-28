import 'package:Alkarama_Mobile/core/enums/mycontainer_enum.dart';
import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String image;
  final String? text;
  final AlignmentGeometry? childAlign;
  final double? width;
  final double? height;
  final MyContainerType? type;
  const MyContainer(
      {super.key,
      required this.image,
      this.width,
      this.height,
      this.childAlign,
      this.type,
      this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Container(
      width: width ?? screenWidth(1.4),
      height: height ?? screenWidth(2),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.contain,
              image: AssetImage("assets/images/pngs/${image}.png"))),
      child: Container(
          height: screenWidth(7),
          width: screenWidth(1),
          alignment: childAlign ?? AlignmentDirectional.centerStart,
          padding: EdgeInsetsDirectional.only(
            start: screenWidth(40),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(20),
                  bottomEnd: Radius.circular(20)),
              color: AppColors.main_color),
          child: getChild(type)),
    ));
  }

  Widget getChild(MyContainerType? type) {
    switch (type) {
      case MyContainerType.HORIZONTAL:
        return CustomText(
          type: TextStyleType.CUSTOM,
          text: text ?? "",
          fontFamily: "Cairo",
          textAlign: TextAlign.start,
          textSize: screenWidth(18),
          textColor: AppColors.white_color,
        );
      case MyContainerType.VERTICAL:
        return FittedBox(
            fit: BoxFit.contain,
            child: CustomText(
              type: TextStyleType.CUSTOM,
              text: text ?? "",
              fontFamily: "Cairo",
              textAlign: TextAlign.center,
              textSize: screenWidth(32.7),
              textColor: AppColors.white_color,
            ));
      default:
        return SizedBox();
    }
  }
}
