import 'package:flutter/material.dart';
import 'package:Alkarama_Mobile/ui/shared/custom%20_widgets/custom_elavated_buttom.dart';
import 'package:Alkarama_Mobile/ui/shared/shared_widgets/custom_text.dart';
import 'package:Alkarama_Mobile/ui/shared/utlis.dart';

import '../../../core/translation/app_translation.dart';

class SignWithFacebook extends StatelessWidget {
  final VoidCallback? onPressed;
  const SignWithFacebook({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MyElevatedButton(
      onPressed: () {},
      child: CustomText(
        text: tr('key_sign_in_with_facebook'),
      ),
      childAlign: AlignmentDirectional(-0.7, 0),
      height: screenWidth(7),
      backgroundColor: Color.fromRGBO(66, 103, 178, 10),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
    );
  }
}
