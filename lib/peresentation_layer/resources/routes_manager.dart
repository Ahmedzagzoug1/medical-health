import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/pages/login_page.dart';
import 'package:medical_health_app/peresentation_layer/pages/reset_password_page.dart';
import 'package:medical_health_app/peresentation_layer/pages/sign_up_page.dart';
import 'package:medical_health_app/peresentation_layer/pages/splash_page.dart';
import 'package:medical_health_app/peresentation_layer/pages/welcome_page.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String signUpRoute = "/sign_up";
  static const String resetPasswordRoute = "/reset_password";
  static const String welcomeRoute = "/welcome";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case Routes.resetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ResetPasswordPage());
      case Routes.welcomeRoute:
        return MaterialPageRoute(builder: (_) => const WelcomePage());
      default:
        return MaterialPageRoute(builder: (_) => const WelcomePage());
    }
  }
}
