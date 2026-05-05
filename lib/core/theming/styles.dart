import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

class TextStyles {
  static TextStyle font30Black700Weight = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font32MainBlue700Weight = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManger.mainBlue,
  );
  static TextStyle font13MainBlue400Weight = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManger.mainBlue,
  );
  static TextStyle font15Grey400Weight = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManger.grey,
  );
  static TextStyle font16White400Weight = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManger.white,
  );
  static TextStyle font13LightGrey400Weight = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManger.lightGrey,
  );
  static TextStyle font14darkBlue400Weight = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManger.darkBlue,
  );
}
