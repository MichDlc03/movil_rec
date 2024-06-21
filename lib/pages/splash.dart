// ignore_for_file: unused_element

import 'package:app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/widgets/textFileFormGeneral.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        child: Container(
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
      ),
    ));
  }
}
