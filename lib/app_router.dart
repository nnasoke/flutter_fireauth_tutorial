import 'package:flutter/material.dart';
import 'package:flutter_fireauth_tutorial/screens/email_password_login.dart';
import 'package:flutter_fireauth_tutorial/screens/email_password_signup.dart';
import 'package:flutter_fireauth_tutorial/screens/home.dart';

class AppRouter {
  static const String home = "/";
  static const String emailPasswordLogIn = "/email-password-login";
  static const String emailPasswordSignUp = "/email-password-signup";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case emailPasswordLogIn:
        return MaterialPageRoute(builder: (context) => EmailPasswordLogIn());
      case emailPasswordSignUp:
        return MaterialPageRoute(builder: (context) => EmailPasswordSignUp());
      default:
        return MaterialPageRoute(builder: (context) => Container());
    }
  }
}
