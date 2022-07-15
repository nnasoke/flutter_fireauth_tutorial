import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fireauth_tutorial/screens/email_password_signin.dart';
import 'package:flutter_fireauth_tutorial/screens/user_logged_screen.dart';

class EmailPasswordHomeScreen extends StatefulWidget {
  EmailPasswordHomeScreen({Key? key}) : super(key: key);

  @override
  State<EmailPasswordHomeScreen> createState() =>
      _EmailPasswordHomeScreenState();
}

class _EmailPasswordHomeScreenState extends State<EmailPasswordHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshort) {
          if (snapshort.hasData) {
            return UserLoggedScreen();
          } else {
            return EmailPasswordSignIn();
          }
        },
      ),
    );
  }
}
