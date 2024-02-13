import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/colors.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/appbar_view/appbar_controller.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/appbar_view/appbar_view_widgets/customPopupMenuItem.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key, required this.preferredSize});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  final Size preferredSize;
}

class _MyAppBarState extends State<MyAppBar> {
  MyAppBarController controller = Get.put(MyAppBarController());

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: widget.preferredSize,
        child: ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            child: AppBar(
              backgroundColor: AppColors.main_color,
              automaticallyImplyLeading: false,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/pngs/logo_1.5x.png",
                    scale: 1.3,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: screenWidth(20)),
                    child: CustomText(
                      type: TextStyleType.CUSTOM,
                      text: "نادي الكرامة الرياضي",
                      fontFamily: "Cairo",
                      textweight: FontWeight.w700,
                      textSize: screenWidth(25),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              actions: [
                Obx(
                  () => PopupMenuButton(
                      onSelected: (item) {
                        controller.Selecteditem.value = item;
                        controller.end();
                      },
                      onOpened: () {
                        controller.start();
                      },
                      onCanceled: () {
                        controller.end();
                      },
                      offset: Offset(0.0, screenWidth(7)),
                      child: Container(
                        margin:
                            EdgeInsetsDirectional.only(end: screenWidth(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AnimatedBuilder(
                              animation: controller.animationController!,
                              builder: (context, child) => Transform.rotate(
                                  angle: controller.arrowAnimation!.value,
                                  child: Image.asset(
                                      "assets/images/pngs/arrow.png")),
                            ),
                            SizedBox(
                              width: screenWidth(50),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                color: AppColors.secondary_color,
                                width: screenWidth(7.5),
                                height: screenWidth(8.5),
                                child: UnconstrainedBox(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(9),
                                    child: Container(
                                      width: screenWidth(8),
                                      height: screenWidth(8.5),
                                      color: Colors.white,
                                      child: Image.asset(
                                        "assets/images/pngs/${controller.Selecteditem.value}.png",
                                        //scale: 1.3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      itemBuilder: (context) => [
                            PopupMenuItem<String>(
                              value: "ball",
                              padding: EdgeInsets.only(
                                  right: screenWidth(50),
                                  left: screenWidth(30)),
                              child: CustomPopupMenuItem(
                                icon: "ball",
                                text: "كرة قدم",
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: "basketball",
                              padding: EdgeInsets.only(
                                  right: screenWidth(50),
                                  left: screenWidth(30)),
                              child: CustomPopupMenuItem(
                                icon: "basketball",
                                text: "كرة سلة",
                              ),
                            ),
                          ]),
                ),
              ],
            )));
  }
}
