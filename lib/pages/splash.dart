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
              Color.fromARGB(255, 159, 187, 243),
              Color(0xff154367),
              Color(0xff154367),
              Color(0xff154367),
              Color.fromARGB(255, 159, 187, 243),
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
