import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.orange.shade100,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.orange.shade100
              ],
                  stops: [
                0.0,
                0.3,
                0.5,
                0.7,
                1
              ])),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
