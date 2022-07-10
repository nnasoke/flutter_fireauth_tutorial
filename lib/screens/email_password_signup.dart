import 'package:flutter/material.dart';
import 'package:flutter_fireauth_tutorial/app_router.dart';

class EmailPasswordSignUp extends StatefulWidget {
  EmailPasswordSignUp({Key? key}) : super(key: key);

  @override
  State<EmailPasswordSignUp> createState() => _EmailPasswordSignUpState();
}

class _EmailPasswordSignUpState extends State<EmailPasswordSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                hintText: "Password",
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Comfirm Password",
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Sign Up"),
            ),
            const SizedBox(height: 30),
            const Text("Already a member?"),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Log In"),
            ),
          ],
        ),
      ),
    );
  }
}
