import 'package:flutter/material.dart';
import 'package:flutter_fireauth_tutorial/app_router.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Let's Log in!",
              style: TextStyle(fontSize: 21),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.emailPasswordLogIn);
              },
              child: const Text("Email/Password"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Phone"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Anonymous"),
            ),
            const SizedBox(height: 25),
            Divider(
              indent: 150,
              endIndent: 150,
              color: Colors.blueAccent.withOpacity(0.8),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Google"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Apple"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Facebook"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Github"),
            ),
          ],
        ),
      ),
    );
  }
}
