import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserLoggedScreen extends StatefulWidget {
  UserLoggedScreen({Key? key}) : super(key: key);

  @override
  State<UserLoggedScreen> createState() => _UserLoggedScreenState();
}

class _UserLoggedScreenState extends State<UserLoggedScreen> {
  final currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${currentUser!.email} has logged in'),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: const Text('Sign out')),
        ],
      ),
    );
  }
}
