import 'dart:async';
import 'package:chatapp/pages/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Image.asset(
                'images/monkey.png',
                height: 120,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Monkey Chat',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 3),
          ),
          const SizedBox(
            height: 20,
          ),
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.white),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 200),
            child: Text(
              'Redwan Islam',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 3),
            ),
          ),
        ],
      ),
    );
  }
}
