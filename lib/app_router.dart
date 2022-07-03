import 'package:flutter/material.dart';
import 'package:flutter_fireauth_tutorial/screens/email_password_login.dart';
import 'package:flutter_fireauth_tutorial/screens/email_password_signin.dart';
import 'package:flutter_fireauth_tutorial/screens/home.dart';

class AppRouter {
  static const String home = "/";
  static const String emailPasswordLogIn = "/email-password-login";
  static const String emailPasswordSignIn = "/email-password-signin";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case emailPasswordLogIn:
        return MaterialPageRoute(builder: (context) => EmailPasswordLogIn());
      case emailPasswordSignIn:
        return MaterialPageRoute(builder: (context) => EmailPasswordSignIn());
      default:
        return MaterialPageRoute(builder: (context) => Container());
    }
  }
}
