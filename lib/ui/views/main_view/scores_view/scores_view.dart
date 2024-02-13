import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';

import 'package:flutter/material.dart';

class ScoresView extends StatefulWidget {
  const ScoresView({super.key});

  @override
  State<ScoresView> createState() => _ScoresViewState();
}

class _ScoresViewState extends State<ScoresView> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomText(
      text: "Scores",
      type: TextStyleType.TITLE,
    ));
  }
}
