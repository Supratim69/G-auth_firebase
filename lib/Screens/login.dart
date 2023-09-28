import 'package:flutter/material.dart';
import 'package:test/Screens/home.dart';
import 'package:test/Services/firebase_services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          height: 75,
          child: ElevatedButton(
              onPressed: () async {
                await FirebaseServices().signInWithGoogle();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "lib/google-logo.png",
                    height: 35,
                    width: 35,
                  ),
                  const Text(
                    "Login with google",
                    style: TextStyle(fontSize: 22),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
