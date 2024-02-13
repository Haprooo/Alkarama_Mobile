import 'package:Alkarama_Mobile/core/enums/text_style_type.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class MatchesView extends StatefulWidget {
  const MatchesView({super.key});

  @override
  State<MatchesView> createState() => _MatchesViewState();
}

class _MatchesViewState extends State<MatchesView> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomText(
      text: "Matches",
      type: TextStyleType.TITLE,
    ));
  }
}
