import 'package:flutter/material.dart';
import 'package:medical_health_app/features/auth/presentation/pages/login_page.dart';
import 'package:medical_health_app/features/auth/presentation/pages/reset_password_page.dart';
import 'package:medical_health_app/features/auth/presentation/pages/sign_up_page.dart';
import 'package:medical_health_app/features/favorite/presentation/pages/favorite_page.dart';
import 'package:medical_health_app/features/home/presentation/pages/home_page.dart';
import 'package:medical_health_app/features/welcome/view/pages/welcome_page.dart';

class Routes {
  static const String loginRoute = "/login";
  static const String signUpRoute = "/sign_up";
  static const String resetPasswordRoute = "/reset_password";
  static const String welcomeRoute = "/welcome";
  static const String homeRoute = "/home";
  static const String favoriteRoute = "/favorite";
}

class RouteGenerator {


  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
     
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case Routes.resetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ResetPasswordPage());
      case Routes.welcomeRoute:
        return MaterialPageRoute(builder: (_) => const WelcomePage());
         case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
         case Routes.favoriteRoute:
        return MaterialPageRoute(builder: (_) => const FavoritePage());
      default:
        return MaterialPageRoute(builder: (_) => const WelcomePage());
    }
  }
}
