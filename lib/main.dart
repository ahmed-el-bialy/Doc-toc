import 'package:doc_tok/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(DoctocApp(appRouter: AppRouter()));
}

class DoctocApp extends StatelessWidget {
  final AppRouter appRouter;

  const DoctocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(debugShowCheckedModeBanner: false),
    );
  }
}
