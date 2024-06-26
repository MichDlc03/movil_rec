import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/widgets/textFileFormGeneral.dart';
import 'crear_cuenta.dart';

class LoginPage extends StatefulWidget {
  static String id = "login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 90.0,
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
              height: 25.0,
            ),
            _textFilename(),
            const SizedBox(
              height: 25.0,
            ),
            _textFilePassword(),
            const SizedBox(
              height: 30.0,
            ),
            _buttonSingUp(),
            const SizedBox(
              height: 100.0,
            ),
            Text(
              '¿Aun no tienes cuenta?',
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
                  MaterialPageRoute(builder: (context) => Crear_cuentaPage()),
                );
              },
              child: Text(
                'Registrarme',
                textAlign: TextAlign.center,
                style: GoogleFonts.dosis(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 20,
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
        icon: Icons.person);
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
        color: const Color.fromARGB(255, 46, 46, 46),
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'ListaDeProspectos');
        },
        elevation: 3.0,
        focusElevation: 20,
        focusColor: const Color(0xff3B3535),
        padding: const EdgeInsets.symmetric(horizontal: 98.0, vertical: 18.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Text('Iniciar sesión',
            style: GoogleFonts.dosis(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white)));
  }
}
