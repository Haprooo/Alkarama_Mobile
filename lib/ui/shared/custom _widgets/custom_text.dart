import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyleType? type;
  final Color? textColor;
  final FontWeight? textweight;
  final String? fontFamily;
  final double? textSize;
  final double? lineHeight;
  final TextAlign? textAlign;
  final int? maxLines;
  const CustomText({
    super.key,
    this.text = "22",
    this.type = TextStyleType.SMALL,
    this.textColor,
    
    this.textSize,
    this.fontFamily,
    this.textAlign,
    this.maxLines,
    this.lineHeight,  this.textweight,
     
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Text(

      text,
      style: getStyle(size),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }

  TextStyle? getStyle(Size size) {
    switch (type) {
      case TextStyleType.TITLE:
        return TextStyle(
            fontSize: size.width / 18,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w700,
            color: textColor);
      case TextStyleType.SUBTITLE:
        return TextStyle(
            fontSize: size.width / 22,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w500,
            color: textColor);
      case TextStyleType.BODY:
        return TextStyle(
            fontSize: size.width / 24,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w400,
            color: textColor);
      case TextStyleType.SMALL:
        return TextStyle(
            fontSize: textSize ?? size.width / 30,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w300,
            color: textColor);
      case TextStyleType.CUSTOM:
        return TextStyle(
            fontSize: textSize,
            fontFamily: fontFamily,
            fontWeight: textweight,
            height: lineHeight,
            color: textColor);
      default:
        return TextStyle(
            fontSize: textSize,
            fontFamily: fontFamily,
            fontWeight: textweight,
            color: textColor);
    }
  }
}
