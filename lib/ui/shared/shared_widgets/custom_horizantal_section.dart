
import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class CustomHorizantalSection extends StatelessWidget {

 final String? imageurl;
 final String title;
 final String description;

  const CustomHorizantalSection({super.key, this.imageurl, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
  return Row(
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
            padding: EdgeInsetsDirectional.only(
            start: screenWidth(15),
            end: screenWidth(25)),


              child: CustomText(  
                fontWeight: FontWeight.normal, 
              text:'$title',
              textColor: Colors.black,
              type: TextStyleType.CUSTOM,
              fontFamily: "Cairo",
              textweight:FontWeight.w700),
             ),


            Container(  
            margin: EdgeInsetsDirectional.only(
            top:screenWidth(35),
            start: screenWidth(22), 
                      ),
            decoration: BoxDecoration(
            color: Colors.white,
                       ),
            width:  screenWidth(1.9),
            height: screenWidth(2),


              child: CustomText( 
                fontWeight: FontWeight.normal,
              text:'$description',
              type: TextStyleType.CUSTOM,
              textColor: Colors.black,
             fontFamily:'Cairo',
            textweight: FontWeight.w400,
             ),
             ),
                          ],
                              ),

            Column(
              children: [
                Container(
                margin: EdgeInsetsDirectional.only(
                top:screenWidth(50),
                start: screenWidth(50), 
              
                ),
                decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(19),
                ),
                width:  screenWidth(2.5),
                height: screenWidth(2.1),
                
                child: Image.asset('assets/images/pngs/$imageurl.png'),

                ),
              ],
            ),
                  ], );
  }
}