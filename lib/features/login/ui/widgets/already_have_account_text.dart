import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyles.font14darkBlue400Weight,
        children: [
          TextSpan(text: "Already have an account yet? "),
          TextSpan(text: "Sign Up ", style: TextStyles.font15MainBlue600Weight),
        ],
      ),
    );
  }
}
