import 'package:doc_tok/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30).h,
            child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [DocLogoAndName()]),
          ),
        ),
      ),
    );
  }
}
