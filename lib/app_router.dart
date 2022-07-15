import 'package:flutter/material.dart';
import 'package:flutter_fireauth_tutorial/screens/email_password_home_screen.dart';
import 'package:flutter_fireauth_tutorial/screens/email_password_signup.dart';
import 'package:flutter_fireauth_tutorial/screens/home_screen.dart';

class AppRouter {
  static const String home = "/";
  static const String emailPaswordHome = "/email-password";
  static const String emailPaswordSignUp = "/email-password-signup";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case emailPaswordHome:
        return MaterialPageRoute(
            builder: (context) => EmailPasswordHomeScreen());
      case emailPaswordSignUp:
        return MaterialPageRoute(builder: (context) => EmailPasswordSignUp());
      default:
        return MaterialPageRoute(builder: (context) => Container());
    }
  }
}
