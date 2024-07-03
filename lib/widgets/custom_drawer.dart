import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff0A0A0A),
            ),
            child: Text(
              'Menú',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inmuebles'),
            onTap: () {
              Navigator.pop(context);  
              Navigator.pushNamed(context, 'ListaDeInmuebles');  
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Asesores'),
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