import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class CustomDetailsMatch extends StatelessWidget {
 final String?  firstimageurl;
 final String? secondimageurl;
 final String firstteamName;
  final String secondteamName;
 final String plceName;
 final String date;


 const CustomDetailsMatch({
  super.key,
  required this.plceName, 
  required this.date, 

  this.firstimageurl, this.secondimageurl,
   required this.firstteamName,
    required this.secondteamName});

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
            start:  screenWidth(90),
            top: screenWidth(10),
            bottom:screenWidth(40) ), 
            child: Image.asset('assets/images/pngs/$firstimageurl.png',
            width: screenHeight(12),),
              ),

              
          Padding(
          padding: EdgeInsetsDirectional.only(start: screenWidth(40),),
          child: CustomText(
            fontWeight: FontWeight.normal,
          text: '$firstteamName',
          textSize: 15,
          fontFamily: 'Cairo',
          )
          ),
          ],
          ),

    Container(
    decoration: BoxDecoration(
    color: AppColors.white_color,
    borderRadius: BorderRadius.circular(2),
    ),
    width: screenWidth(1.9),
    
     
   child: Column(children: [
    Padding(
      
            padding:EdgeInsetsDirectional.only(
            top: screenWidth(5),
           
            ), 
           child: CustomText(
            fontWeight: FontWeight.normal,
            text: '$plceName ',
           ),
           ),

          Padding(
            padding: EdgeInsetsDirectional.only(
            top: screenWidth(35),
            ),
            child: CustomText(
              fontWeight: FontWeight.normal,
            text: '   $date',
            textSize:16,
            type:TextStyleType.CUSTOM,
            textweight:FontWeight.w700,
          
                  
     ),
          ),
          ],),
    ),




            Column(children: [
            Padding(
            padding:EdgeInsetsDirectional.only(
            start:  screenWidth(90),
            top: screenWidth(10),
            bottom:screenWidth(40), 
          
            ), 
            child: Image.asset('assets/images/pngs/$secondimageurl.png',
             width: screenHeight(12),),
              ),
               Padding(
            padding: EdgeInsetsDirectional.only(start: screenWidth(40),),
            child: CustomText(
              fontWeight: FontWeight.normal,
            text: '$secondteamName',
            textSize: 15,
            fontFamily: 'Cairo',
            )
            ),
           ],),
           ]),   
              );
                }}
      
 