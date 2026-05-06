import 'package:doc_tok/core/helpers/extentsion.dart';
import 'package:doc_tok/core/helpers/spacing.dart';
import 'package:doc_tok/core/routing/routes.dart';
import 'package:doc_tok/core/theming/colors.dart';
import 'package:doc_tok/core/theming/styles.dart';
import 'package:doc_tok/core/widgets/app_text_button.dart';
import 'package:doc_tok/core/widgets/app_text_form_field.dart';
import 'package:doc_tok/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doc_tok/features/login/ui/widgets/terms_and_policy_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8).r,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyles.font32MainBlue700Weight.copyWith(
                      fontSize: 24.sp,
                    ),
                  ),
                  verticalSpacing(10),
                  Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style: TextStyles.font15Grey400Weight,
                  ),

                  verticalSpacing(40.h),
                  Form(
                    key: formKey,

                    child: Column(
                      children: [
                        AppTextFormField(hintText: "Example@gmail.com"),
                        verticalSpacing(18),
                        AppTextFormField(
                          hintText: "Password (+8 characters )",
                          isObscureText: isSecure,
                          suffixIcon: IconButton(
                            onPressed: () {
                              isSecure = !isSecure;
                              setState(() {
                                isSecure;
                              });
                            },
                            icon: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6.0,
                              ),
                              child: Icon(
                                isSecure == true
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: ColorsManger.darkBlue,
                                size: 14.sp,
                              ),
                            ),
                          ),
                        ),
                        verticalSpacing(18),

                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: GestureDetector(
                            onTap: () {
                              context.pushNamed(Routers.loginScreen, null);
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyles.font13MainBlue400Weight,
                            ),
                          ),
                        ),
                        verticalSpacing(40),
                        AppTextButton(buttonText: 'Login', onPressed: () {}),
                        verticalSpacing(40),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(color: ColorsManger.lightGrey),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Expanded(
                                child: Text(
                                  "Or sing in with",
                                  style: TextStyles.font14DarkGrey400Weight,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(color: ColorsManger.darkGrey),
                            ),
                          ],
                        ),
                        verticalSpacing(30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    16.r,
                                  ),
                                ),
                                elevation: 1,
                                color: ColorsManger.lighterGrey,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/images/google_logo.png",
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    16.r,
                                  ),
                                ),
                                elevation: 1,
                                color: ColorsManger.lighterGrey,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/images/facebook_logo.png",
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    16.r,
                                  ),
                                ),
                                elevation: 1,
                                color: ColorsManger.lighterGrey,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/images/apple_logo.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        verticalSpacing(20),
                        TermsAndPolicyText(),
                        verticalSpacing(22),
                        AlreadyHaveAccountText(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
