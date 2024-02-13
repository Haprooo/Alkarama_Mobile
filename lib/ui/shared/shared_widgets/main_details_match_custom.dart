import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class MainDetailsMatchCustom extends StatelessWidget {
  final String? imageurl;
  final String?  firstimageurl;
 final String? secondimageurl;
 final String firstteamName;
  final String secondteamName;
 final String plceName;
 final String date;

  const MainDetailsMatchCustom({super.key, this.imageurl, this.firstimageurl, this.secondimageurl, required this.firstteamName, required this.secondteamName, required this.plceName, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:EdgeInsetsDirectional.only(
        top:screenWidth(2),
        start: screenWidth(25),
        end: screenWidth(25)),
        decoration: BoxDecoration(
             boxShadow: [
              BoxShadow(
              color: AppColors.grey_color,
              spreadRadius: 4,
              blurRadius: 7,
            ),
          ],
        color: AppColors.white_color,
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color:AppColors.grey_color,width: 1)),
        width: screenWidth(1),
        height: screenWidth(2),


               child: 
               Row(children: [
               Column(
                children: [
                Padding(
                padding:EdgeInsetsDirectional.only(
                start:  screenWidth(100),
                top: screenWidth(10),
                bottom:screenWidth(40),
                 ), 
                child: Image.asset('assets/images/pngs/$imageurl.png',
                width: screenHeight(12),),
                  ),

                  
              Padding(
              padding: EdgeInsetsDirectional.only(start: screenWidth(25),),
              child: CustomText(
              text: 'الكرامة',
              textSize: 15,
              fontFamily: 'Cairo', textweight: FontWeight.w100,
              )
              ),
              ],
              ), 
              
                CustomText(text: '0',
                textSize: 30,
                textweight:FontWeight.w700),
              

               Padding(
                 padding:EdgeInsetsDirectional.only(
                             top: screenWidth(20),
                             start:screenWidth(30),
                             ),
                 child: Column(children: [
                             CustomText(
                             text: 'الملعب البلدي', textweight: FontWeight.w400,
                             ),
                           
                   Padding(
                 padding: EdgeInsetsDirectional.only(
                             top: screenWidth(7),
                             ),
                 child: Container(
                   decoration: BoxDecoration(
                  color: AppColors.red_color,
                  borderRadius: BorderRadius.circular(8),
                 ),
                 child:Center(
                   child: CustomText(
                    text: 'live',
                   fontFamily: 'Cairo',
                   textColor: AppColors.white_color, textweight: FontWeight.w400,
                   ),
                 ),
                 width: screenWidth(10),     
                  ),
                   ),
                           
                             
                             CustomText(
                             text: ' السبت  2/12   12:12م',
                             textSize:16,
                             type:TextStyleType.CUSTOM,
                             textweight:FontWeight.w700,
                             ),
                 
                             ],),
               ),
            

                Padding(
                  padding: EdgeInsetsDirectional.only(
                  start:  screenWidth(25),
                  ),
                  child: CustomText(text: '5',
                  textSize: 30,
                  textweight:FontWeight.w500),
                ),


                Column(children: [
                Padding(
                padding:EdgeInsetsDirectional.only(
                start:  screenWidth(200),
                top: screenWidth(10),
                bottom:screenWidth(40),  
                ), 
                child: Image.asset('assets/images/pngs/Alwasbe.jpg',
                 width: screenHeight(12),),
                  ),
                Padding(
                padding: EdgeInsetsDirectional.only(start: screenWidth(40),),
                child: CustomText(
                text: 'الوثبة',
                textSize: 15,
                fontFamily: 'Cairo', textweight: FontWeight.w400,
                )
                ),
               ],),
               
               
                 ],
                 ),   
                  );
  }
}