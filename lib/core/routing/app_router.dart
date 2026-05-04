import 'package:doc_tok/core/routing/routes.dart';
import 'package:doc_tok/features/login/onboarding/onboarding_screen.dart';
import 'package:doc_tok/features/login/ui/widgets/login_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
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
        return MaterialPageRoute(builder: (_) => Placeholder());
    }
  }
}
