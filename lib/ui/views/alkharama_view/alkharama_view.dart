
import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:Alkarama_Mobile/ui/views/splash_view/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Alkharama_view extends StatefulWidget {
  const Alkharama_view({super.key});

  @override
  State<Alkharama_view> createState() => _Alkharama_viewState();
}

class _Alkharama_viewState extends State<Alkharama_view> {
SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
    body: Column(
      children: [
        Container(
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
                child: Image.asset('assets/images/pngs/alkarama_matches.png',
                width: screenHeight(12),),
                  ),

                  
              Padding(
              padding: EdgeInsetsDirectional.only(start: screenWidth(25),),
              child: CustomText(
              text: 'الكرامة',
              textSize: 15,
              fontFamily: 'Cairo',
               
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
                  textweight:FontWeight.w700),
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
                  ),
                 

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
                  child: Image.asset('assets/images/pngs/alkharama1.png',
                   width: screenHeight(7),
                   height: screenWidth(2),),
                ),
                  
                Padding(
                  padding:EdgeInsetsDirectional.only(start: screenWidth(50),
                  top: screenWidth(20),),  
                  child: Column(
                    
                    children: [
                      CustomText(
                      text: 'بهدفين مقبل هدف الوثبة نهاية يق ',
                      textSize: 15,
                      fontFamily: 'Cairo',
                      textColor: AppColors.black_color,
                       textweight: FontWeight.w400,
                       maxLines: 2,
                      ),
                    ],
                  ),
                ),


            ],
          )
        ),
      ],
       ), 
              ),
              );
  
  }
  }
