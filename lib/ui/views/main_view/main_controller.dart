import 'package:Alkarama_Mobile/core/enums/bottom_navigation_enum.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  PageController pageController = PageController();
  Rx<BottomNavigationEnum> select = BottomNavigationEnum.HOME.obs;
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  void onInit() {
    super.onInit();
  }

  void buttomNavBarClick(selec, index) {
    select.value = selec;

    pageController.jumpToPage(index);
  }
}
