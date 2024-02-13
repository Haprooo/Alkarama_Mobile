import 'package:Alkarama_Mobile/core/enums/bottom_navigation_enum.dart';
import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/appbar_view/appbar_view.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:Alkarama_Mobile/ui/views/main_view/about_view/about_view.dart';
import 'package:Alkarama_Mobile/ui/views/main_view/home_view/home_view.dart';
import 'package:Alkarama_Mobile/ui/views/main_view/main_controller.dart';
import 'package:Alkarama_Mobile/ui/views/main_view/main_view_widgets/bottom_navigation.dart';
import 'package:Alkarama_Mobile/ui/views/main_view/matches_view/matches_view.dart';
import 'package:Alkarama_Mobile/ui/views/main_view/muisiem_view/muisiem_view.dart';
import 'package:Alkarama_Mobile/ui/views/main_view/scores_view/scores_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MainView extends StatefulWidget {
  const MainView({
    super.key,
  });

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  MainController controller = Get.put(MainController());

  //File? selectedImage;
  //bool showOption = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(
      () => Scaffold(
          key: controller.scaffoldkey,
          appBar: MyAppBar(
            preferredSize: Size(double.infinity, screenWidth(5.5)),
          ),
          bottomNavigationBar: BottomAppBar(
            color: AppColors.main_color,
            notchMargin: 5,
            shape: CircularNotchedRectangle(),
            child: CustomBottomNavigation(
              selectedView: controller.select.value,
              onTap: (selec, index) {
                controller.buttomNavBarClick(selec, index);
              },
            ),
          ),
          floatingActionButton: Container(
            width: screenWidth(5.7),
            height: screenWidth(5.7),
            child: FittedBox(
              child: FloatingActionButton(
                backgroundColor: AppColors.main_color,
                splashColor: AppColors.main_color,
                hoverColor: AppColors.main_color,
                focusColor: AppColors.main_color,
                foregroundColor: AppColors.main_color,

                //splashColor: Colors.transparent,
                elevation: 0.0,
                focusElevation: 0.0,
                highlightElevation: 0.0,
                hoverElevation: 0.0,
                child:
                    //   SvgPicture.asset("assets/images/svgs/logo.svg"),
                    Image.asset(
                  "assets/images/pngs/logo_1.5x.png",
                  scale: 1.7,
                ),
                onPressed: () {
                  controller.buttomNavBarClick(BottomNavigationEnum.MATCHES, 2);
                },
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          body: PageView(
            controller: controller.pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              HomeView(),
              ScoresView(),
              MatchesView(),
              AboutView(),
              MuisiemView(),
            ],
          )),
    ));
  }
}
// class NoScalingAnimation extends FloatingActionButtonAnimator{
//   double _x;
//   double _y;
//   @override
//   Offset getOffset({Offset begin, Offset end, double progress}) {
//   _x = begin.dx +(end.dx - begin.dx)*progress ;
//   _y = begin.dy +(end.dy - begin.dy)*progress;
//     return Offset(_x,_y);
//   }

//   @override
//   Animation<double> getRotationAnimation({Animation<double> parent}) {
//     return Tween<double>(begin: 1.0, end: 1.0).animate(parent);
//   }

//   @override
//   Animation<double> getScaleAnimation({Animation<double> parent}) {
//     return Tween<double>(begin: 1.0, end: 1.0).animate(parent);
//   }
// }

