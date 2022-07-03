import 'package:flutter/material.dart';

class EmailPasswordLogIn extends StatefulWidget {
  EmailPasswordLogIn({Key? key}) : super(key: key);

  @override
  State<EmailPasswordLogIn> createState() => _EmailPasswordLogInState();
}

class _EmailPasswordLogInState extends State<EmailPasswordLogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Log In")),
      ),
    );
  }
}
