import 'package:flutter/material.dart';
import 'package:flutter_fireauth_tutorial/app_router.dart';

class EmailPasswordLogIn extends StatefulWidget {
  EmailPasswordLogIn({Key? key}) : super(key: key);

  @override
  State<EmailPasswordLogIn> createState() => _EmailPasswordLogInState();
}

class _EmailPasswordLogInState extends State<EmailPasswordLogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Email Log In",
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
            const TextField(
              decoration: InputDecoration(
                hintText: "Password",
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Log in"),
            ),
            const SizedBox(height: 30),
            const Text("Not a member yet?"),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.emailPasswordSignUp);
              },
              child: const Text("Sign up"),
            ),
          ],
        ),
      ),
    );
  }
}
