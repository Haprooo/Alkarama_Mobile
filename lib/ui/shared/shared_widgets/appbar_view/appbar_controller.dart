import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBarController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxString Selecteditem = "ball".obs;
  RxBool click = false.obs;
  final Rxn<AnimationController> _animationController =
      Rxn<AnimationController>();
  AnimationController? get animationController => _animationController.value;

  final Rxn<Animation<double?>> _arrowAnimation = Rxn<Animation<double?>>();
  Animation? get arrowAnimation => _arrowAnimation.value;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _animationController.value = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _arrowAnimation.value = (Tween(begin: 0.0, end: pi / 2)
        .chain(CurveTween(curve: Curves.ease))
        .animate(_animationController.value!)
      ..addListener(() {
        update();
      }));
  }

  @override
  void onClose() {
    // TODO: implement onClose
    _animationController.value?.dispose();
    super.onClose();
  }

  void start() {
    _animationController.value?.forward();
  }

  void end() {
    _animationController.value?.reverse();
  }
}
