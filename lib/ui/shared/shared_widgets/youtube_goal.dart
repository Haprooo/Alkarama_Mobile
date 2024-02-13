import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube/youtube_thumbnail.dart';

class YoutubeGoal extends StatelessWidget {
  final String url;
  final String text;
  const YoutubeGoal({super.key, required this.url, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        LaunchService.launche(url);
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.main_color,
            borderRadius: BorderRadius.circular(20)),

        width: screenWidth(1),
        height: screenWidth(3.5),
        child: Row(
          children: [
            Container(
              width: screenWidth(3),
              height: screenWidth(4.2),
              margin: EdgeInsetsDirectional.only(
                  //top: screenWidth(30),
                  // bottom: screenWidth(30),
                  start: screenWidth(50),
                  end: screenWidth(50)),
              decoration: BoxDecoration(
                  //scolor: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(
                      YoutubeThumbnail(
                        youtubeId: LaunchService.convertUrlToId(url),
                      ).mq(),
                    ),
                    fit: BoxFit.cover,
                  )

                  //color: Colors.amber
                  ),
              child: SvgPicture.asset(
                "assets/images/svgs/youtube_logo.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              width: screenWidth(2),
              // height: screenWidth(4),
              // color: Colors.amber,
              child: CustomText(
                text: text,
                type: TextStyleType.CUSTOM,
                maxLines: 3,
                textAlign: TextAlign.start,
                fontFamily: "Cairo",
                textweight: FontWeight.w400,
                textColor: AppColors.white_color,
                textSize: screenWidth(27),
              ),
            ),
          ],
        ),

        // contentPadding: ,
      ),
    );
  }
}
