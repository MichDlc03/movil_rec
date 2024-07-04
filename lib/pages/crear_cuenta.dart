// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/widgets/textFileFormGeneral.dart';
import 'login_page.dart';

class Crear_cuentaPage extends StatefulWidget {
  static String id = "login_page";

  @override
  State<Crear_cuentaPage> createState() => CrearcuentaPageState();
}

class CrearcuentaPageState extends State<Crear_cuentaPage> {
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 80.0,
            ),
            Image.asset(
              'assets/imagenes/logo.png',
              height: 100.0,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Red Estate Connection',
              textAlign: TextAlign.center,
              style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const SizedBox(
              height: 25.0,
            ),
            _textFilename(),
            const SizedBox(
              height: 25.0,
            ),
            _textFileEmail(),
            const SizedBox(
              height: 25.0,
            ),
            _textFilePassword(),
            const SizedBox(
              height: 35.0,
            ),
            _buttonSingUp(),
            const SizedBox(
              height: 50.0,
            ),
            Text(
              '¿Ya tienes cuenta?',
              textAlign: TextAlign.center,
              style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: Colors.white),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text(
                'Iniciar Sesión',
                textAlign: TextAlign.center,
                style: GoogleFonts.dosis(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            )
          ]),
        ),
      ),
    ));
  }

  Widget _textFilename() {
    return textFileFormGeneral(
        labelText: 'Nombre',
        hintText: 'Nombre',
        onChanged: (value) {},
        icon: Icons.person_2_outlined);
  }

  Widget _textFileEmail() {
    return textFileFormGeneral(
      labelText: 'Correo',
      hintText: 'Correo',
      onChanged: (value) {},
      keyboardType: TextInputType.emailAddress,
      icon: Icons.email,
    );
  }

  Widget _textFilePassword() {
    return textFileFormGeneral(
      labelText: 'Contraseña',
      hintText: 'Contraseña',
      onChanged: (value) {},
      icon: Icons.lock_outline_rounded,
      obscureText: true,
    );
  }

  Widget _buttonSingUp() {
    return MaterialButton(
        color: const Color(0xffEDF2FA),
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'Login');
        },
        elevation: 3.0,
        focusElevation: 20,
        focusColor: const Color(0xff333333),
        padding: const EdgeInsets.symmetric(horizontal: 98.0, vertical: 18.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Text('Continuar',
            style: GoogleFonts.dosis(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: const Color(0xff333333))));
  }
}
