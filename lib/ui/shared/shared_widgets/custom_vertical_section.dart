
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';
 class CustomVerticalSection extends StatelessWidget {
  final String? imageurl;
 final String title;
 final String description;



   const CustomVerticalSection({super.key, required this.title, required this.description, required this.imageurl,});
 
   @override
   Widget build(BuildContext context) {
     return Column(
        children: [
        Container(
             margin: EdgeInsetsDirectional.only(
             top:screenWidth(2),
          
            start: screenWidth(20), end: screenWidth(20)),
            decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(19),
            border: Border.all(color: Colors.black, width: 8)),
            width:  screenWidth(1),
            height: screenWidth(2),
            
            child: Image.asset('assets/images/pngs/$imageurl.png'),

            ),
          
            Padding(
            padding:EdgeInsetsDirectional.only(
          
            top: screenWidth(25),
            start: screenWidth(2.5),
            end: screenWidth(20)), 
              child: CustomText(text: '$title',
              fontWeight: FontWeight.normal,
              textColor: Colors.black,
              textSize: screenWidth(22),
              ),
               ),
            Padding(
            padding: EdgeInsetsDirectional.only(
            start: screenWidth(20),
            end: screenWidth(20)),
            child: Column(
            children: [
             CustomText(
            textAlign: TextAlign.end,
          text:'$description',
            textColor: Colors.black, fontWeight: FontWeight.normal,
                  
            ),
                  ],
                
              ),
            ),
                

          ],
          );


    
       

   }
 }





