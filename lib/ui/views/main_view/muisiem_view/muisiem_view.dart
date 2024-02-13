import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';

import 'package:flutter/material.dart';

class MuisiemView extends StatefulWidget {
  const MuisiemView({super.key});

  @override
  State<MuisiemView> createState() => _MuisiemViewState();
}

class _MuisiemViewState extends State<MuisiemView> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomText(
      text: "Muisiem",
      type: TextStyleType.TITLE,
    ));
  }
}
