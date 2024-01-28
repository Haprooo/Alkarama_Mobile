import 'package:Alkarama_Mobile/core/enums/mycontainer_enum.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/custom_container.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/president_Item.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/section_header.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:Alkarama_Mobile/ui/views/splash_view/splash_controller.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: screenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: SetctionHeader(
                    title: "عن النادي",
                    color: AppColors.grey_color,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SetctionHeader(
                  title: "الجوائز الفردية للاعبي الكرامة",
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
                    President(
                      image: "president",
                      name: "نصوح البارودي\n2006",
                      width: screenWidth(2),
                    ),
                    // President(
                    //   image: "president",
                    //   name: "نصوح البارودي\n2006",
                    //   width: screenWidth(2),
                    // ),
                  ],
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
    );
  }
}
