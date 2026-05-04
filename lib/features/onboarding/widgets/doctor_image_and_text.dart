import 'package:doc_tok/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/logo_with_opacity.png", fit: BoxFit.cover),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withValues(alpha: 0),
                Colors.white.withValues(alpha: .8),
                Colors.white.withValues(alpha: 1),
              ],
            ),
          ),
          child: Image.asset("assets/images/start_background.png"),
        ),
        Positioned(
          bottom: 30.h,
          left: MediaQuery.of(context).size.width * .1,
          right: MediaQuery.of(context).size.width * .1,
          child: Text(
            "Best Doctor Appointment App",
            style: TextStyles.mainBlue700Weight.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
