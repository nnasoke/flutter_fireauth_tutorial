import 'package:flutter/material.dart';

class EmailPasswordSignIn extends StatefulWidget {
  EmailPasswordSignIn({Key? key}) : super(key: key);

  @override
  State<EmailPasswordSignIn> createState() => _EmailPasswordSignInState();
}

class _EmailPasswordSignInState extends State<EmailPasswordSignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Sign In")),
    );
  }
}
