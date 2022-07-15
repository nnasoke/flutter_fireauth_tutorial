import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fireauth_tutorial/toast.dart';

class EmailPasswordSignUp extends StatefulWidget {
  EmailPasswordSignUp({Key? key}) : super(key: key);

  @override
  State<EmailPasswordSignUp> createState() => _EmailPasswordSignUpState();
}

class _EmailPasswordSignUpState extends State<EmailPasswordSignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  void backToSignIn() {
    Navigator.pop(context);
  }

  Future signUp() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String passwordConfirm = passwordConfirmController.text.trim();

    if (email.isEmpty) {
      Toast.showToast(context, 'Email can not be empty.');
      return;
    }

    if (password != passwordConfirm) {
      Toast.showToast(context, 'Password does not match.');
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      backToSignIn();
    } catch (e) {
      Toast.showToast(context, e.toString());
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    super.dispose();
  }

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
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: "Email",
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: "Password",
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            TextField(
              controller: passwordConfirmController,
              decoration: const InputDecoration(
                hintText: "Comfirm Password",
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: signUp,
              child: const Text("Sign Up"),
            ),
            const SizedBox(height: 30),
            const Text("Already a member?"),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: backToSignIn,
              child: const Text("Log In"),
            ),
          ],
        ),
      ),
    );
  }
}
