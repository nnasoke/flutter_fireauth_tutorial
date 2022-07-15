import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fireauth_tutorial/app_router.dart';
import 'package:flutter_fireauth_tutorial/toast.dart';

class EmailPasswordSignIn extends StatefulWidget {
  EmailPasswordSignIn({Key? key}) : super(key: key);

  @override
  State<EmailPasswordSignIn> createState() => _EmailPasswordSignInState();
}

class _EmailPasswordSignInState extends State<EmailPasswordSignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future signIn() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      return;
    }
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } catch (e) {
      Toast.showToast(context, e.toString());
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
              "Sign in, please",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: "Email",
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: "Password",
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: signIn,
              child: const Text("Log in"),
            ),
            const SizedBox(height: 30),
            const Text("Not a member yet?"),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.emailPaswordSignUp);
              },
              child: const Text("Sign up"),
            ),
          ],
        ),
      ),
    );
  }
}
