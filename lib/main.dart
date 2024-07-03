import 'package:app/pages/inmuebles_page.dart';
import 'package:app/pages/login_page.dart';
import 'package:app/pages/prospectos_page.dart';
import 'package:app/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'Splash',
      routes: {
        'Splash': (_) => const Splash(),
        'Login': (_) =>  LoginPage(),
        'ListaDeProspectos': (_) => const ProspectosPage(),
        'ListaDeInmuebles' : (_) => const InmueblesPage()
      },
    );
  }
}
