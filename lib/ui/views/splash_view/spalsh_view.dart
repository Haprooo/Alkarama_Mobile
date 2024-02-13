import 'package:Alkarama_Mobile/core/enums/mycontainer_enum.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/appbar_view/appbar_view.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/custom_container.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/section_header.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/titles_item.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/youtube_goal.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:Alkarama_Mobile/ui/views/main_view/main_view.dart';
import 'package:Alkarama_Mobile/ui/views/splash_view/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  //!   Navigator.push => Get.to(LandingView());
  //?    Navigator.pushReplacement  => Get.off(LandingView());
  //*     Navigator.pushAndRemoveUntil  => Get.offAll(LandingView());
  //todo    Navigator.pop  => Get.back();

  SplashController controller = Get.put(SplashController());
  String? Selecteditem;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle(statusBarColor: AppColors.main_color),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: MyAppBar(
            preferredSize: Size(double.infinity, screenWidth(5.5)),
          ),
          body: Padding(
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: screenWidth(25)),
            child: SingleChildScrollView(
              padding: EdgeInsetsDirectional.only(top: screenWidth(5.2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: SetctionHeader(
                      title: "عن النادي",
                      color: AppColors.grey_color,
                      more: "مشاهدة المزيد",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(MainView());
                    },
                    child: Text("GO TO MAIN"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SvgPicture.asset("assets/images/svgs/youtube_logo.svg"),
                  SetctionHeader(
                    title: "الجوائز الفردية للاعبي الكرامة",
                    more: "مشاهدة المزيد",
                    //color: AppColors.grey_color,
                  ),
                  SetctionHeader(
                    title: "ملابس فريق نادي الكرامة لعام 2023-2024",
                    // more: "مشاهدة المزيد",
                    //color: AppColors.grey_color,
                  ),
                  SizedBox(
                    height: 22.5,
                  ),
                  MyContainer(
                    type: MyContainerType.HORIZONTAL,
                    text: "متى تأسس نادي الكرامة",
                    image: "photo1",
                  ),
                  SizedBox(
                    height: 22.5,
                  ),
                  YoutubeGoal(
                    url: "https://youtu.be/lNyUCHNIiCY?si=WejXUHxKOL6ks_4Z",
                    text:
                        "هدف اللاعب عاطف جنيات فى مرمى السد القطري دوري ابطال اسيا 2007-2008",
                  ),
                  Row(
                    children: [
                      MyContainer(
                        image: "photo2",
                        width: screenWidth(3),
                        height: screenWidth(2),
                        type: MyContainerType.VERTICAL,
                        childAlign: AlignmentDirectional.center,
                        text: "محمد قويض\nجائزة أفضل مدري \nفي آسيا",
                      ),
                      MyContainer(
                        image: "photo2",
                        width: screenWidth(3),
                        height: screenWidth(2),
                        type: MyContainerType.VERTICAL,
                        childAlign: AlignmentDirectional.center,
                        text: "محمد قويض\nجائزة أفضل مدري \nفي آسيا",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22.5,
                  ),
                  Row(
                    children: [
                      // President(
                      //   image: "president",
                      //   name: "نصوح البارودي\n2006",
                      //   width: screenWidth(2),
                      // ),
                      TitelItem(
                        title_image: "win1",
                        title: "ابطال الدوري السوري\n 2008-2007",
                      ),
                      TitelItem(
                        title_image: "win3",
                        title: "ابطال كأس الجمهورية\n 2008-2009",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22.5,
                  ),
                  SizedBox(
                    height: 22.5,
                  ),
                  SetctionHeader(
                    title: "رؤساء نادي الكرامة",
                    //color: AppColors.grey_color,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
