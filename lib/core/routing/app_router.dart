import 'package:doc_tok/core/routing/routes.dart';
import 'package:doc_tok/features/login/ui/widgets/login_screen.dart';
import 'package:flutter/material.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
    // this arguments to passed in any screen like this  ( arguments as ClassName )
    final arguments = setting.arguments;
    switch (setting.name) {
      case Routers.onboardingScreen:
        {
          return MaterialPageRoute(builder: (_) => OnboardingScreen());
        }
      case Routers.loginScreen:
        {
          return MaterialPageRoute(builder: (_) => LoginScreen());
        }
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route defined for ${setting.name}")),
          ),
        );
    }
  }
}
