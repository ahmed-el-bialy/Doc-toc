import 'package:doc_tok/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndPolicyText extends StatelessWidget {
  const TermsAndPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyles.font15LightGrey400Weight,
        children: [
          TextSpan(text: "By logging, you agree to our "),
          TextSpan(
            text: "Terms & Conditions ",
            style: TextStyles.font15Black500Weight
          ),
          TextSpan(text: "and"),
          TextSpan(
            text: " PrivacyPolicy.",
            style: TextStyles.font15Black500Weight,
          ),
        ],
      ),
    );
  }
}
