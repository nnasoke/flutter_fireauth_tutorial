import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fireauth_tutorial/toast.dart';

class EmailPasswordReset extends StatefulWidget {
  EmailPasswordReset({Key? key}) : super(key: key);

  @override
  State<EmailPasswordReset> createState() => _EmailPasswordResetState();
}

class _EmailPasswordResetState extends State<EmailPasswordReset> {
  final emailController = TextEditingController();

  void resetPassword() {
    FirebaseAuth.instance
        .sendPasswordResetEmail(email: emailController.text.trim())
        .then((value) {
      Toast.showToast(
        context,
        'Reset link has been sent, please check your email box.',
      );
    }).onError((e, stackTrace) {
      Toast.showToast(context, e.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Enter your email and we will send'),
            const Text('you the reset link.'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                autocorrect: false,
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: resetPassword,
              color: Colors.blueGrey,
              textColor: Colors.white,
              child: Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
