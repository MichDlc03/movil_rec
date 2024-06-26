import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'Login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 126, 126, 126),
              Color(0xff0A0A0A),
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 126, 126, 126),
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/imagenes/logo.png',
            height: 100.0,
          ),
        ),
      ),
    ));
  }
}
