import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class NewsCustom extends  StatelessWidget {
   final String? imageurl;
    final String description;

  const NewsCustom({super.key, 
  this.imageurl, 
  required this.description});

  @override
  Widget build(BuildContext context) {
    return 
        Container(
        margin:EdgeInsetsDirectional.only(
        top:screenWidth(2),
        start: screenWidth(25),
        end: screenWidth(25)),
        decoration: BoxDecoration(  
        color: AppColors.white_color,
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color:AppColors.white_color,width: 1)),
        width: screenWidth(1),
        height: screenWidth(2.7),
          child:Row(
            
            children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(start: screenWidth(50),), 
                  child: Image.asset('assets/images/pngs/$imageurl.png',
                   width: screenHeight(7),
                   height: screenWidth(2),),
                ),
                  
                Padding(
                  padding:EdgeInsetsDirectional.only(start: screenWidth(50),
                  top: screenWidth(20),),  
                  child: Column(
                    
                    children: [
                      CustomText(
                      text: '$description',
                      textSize: 15,
                      fontFamily: 'Cairo',
                      textColor: AppColors.black_color,
                       fontWeight: FontWeight.normal,
                       maxLines: 2,
                      ),
                    ],
                  ),
                ),


            ],
          )
        );
  }
}