import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xff0B3C5D),
            ),
            child: Text(
              'Menú',
              style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Color(0xff0B3C5D),
            ),
            title: Text(
              'Inmuebles',
              style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff010101)),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'ListaDeInmuebles');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Color(0xff0B3C5D),
            ),
            title: Text('Asesores',
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff010101),
                )),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'ListaDeProspectos');
            },
          ),
          // Agrega más ListTiles según sea necesario
        ],
      ),
    );
  }
}
