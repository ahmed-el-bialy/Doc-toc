import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle mainBlue700Weight = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManger.mainBlue,
  );
  static TextStyle grey400Weight = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManger.grey,
  );
}
