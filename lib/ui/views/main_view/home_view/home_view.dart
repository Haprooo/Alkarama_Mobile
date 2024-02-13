import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/youtube_goal.dart';
import 'package:Alkarama_Mobile/ui/views/main_view/home_view/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomText(
        text: "Home",
        type: TextStyleType.TITLE,
      ),
      
    ]);
  }
}
