import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class President extends StatelessWidget {
  final String image;
  final String name;
  final double width;
  const President({
  super.key,
    required this.image,
    required this.name,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.blueGrey,
        width: width,
        height: width,
        child: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/pngs/${image}.png"))),
          child: Container(
            width: width,
            height: width / 3, // ripponHeight,
            padding: EdgeInsetsDirectional.only(bottom: width / 8),
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/pngs/golden_ripon.png"))),
            child: Container(
              width: width / 2.5,
              height: width / 7.7,
              child: FittedBox(
                child: CustomText(
                  textweight: FontWeight.w400,
                  text: name,
                  type: TextStyleType.CUSTOM,
                  lineHeight: 1,
                  textAlign: TextAlign.center,
                  fontFamily: "Cairo",
                ),
              ),
            ),
          ),
        ));
  }
}
