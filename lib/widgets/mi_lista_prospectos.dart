import 'package:app/models/inmueble_model.dart';
import 'package:app/pages/perfil_prospectos_page.dart';
import 'package:app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/prospecto_model.dart';

class MiListaDeProspectos extends StatefulWidget {
  const MiListaDeProspectos({super.key});

  @override
  State<MiListaDeProspectos> createState() => _MiListaDeProspectosState();
}

class _MiListaDeProspectosState extends State<MiListaDeProspectos> {
  final List<Prospecto> prospectos = [
    Prospecto(
      "Michelle Jimenez",
      "Detalles",
      [
        Inmueble(
            id: 1,
            nombreInmueble: "Casa de Michelle",
            medidasDelTerreno: "100m2",
            cantidadDeHabitaciones: 3),
        Inmueble(
            id: 2,
            nombreInmueble: "Apartamento en el centro",
            medidasDelTerreno: "80m2",
            cantidadDeHabitaciones: 2),
      ],
    ),
    Prospecto(
      "Juan Perez",
      "Detalles",
      [
        Inmueble(
            id: 3,
            nombreInmueble: "Casa en la playa",
            medidasDelTerreno: "200m2",
            cantidadDeHabitaciones: 4),
      ],
    ),
    Prospecto(
      "Ana Lopez",
      "Detalles",
      [
        Inmueble(
            id: 4,
            nombreInmueble: "Apartamento moderno",
            medidasDelTerreno: "90m2",
            cantidadDeHabitaciones: 2),
      ],
    ),
    Prospecto(
      "Carlos Martinez",
      "Detalles",
      [
        Inmueble(
            id: 5,
            nombreInmueble: "Casa familiar",
            medidasDelTerreno: "150m2",
            cantidadDeHabitaciones: 3),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    String title = "Asesores";
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white)),
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(Icons.more_vert, color: Colors.white),
              );
            },
          ),
        ],
        centerTitle: true,
        backgroundColor: const Color(0xff0B3C5D),
        title: Text(
          title,
          style: GoogleFonts.dosis(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      drawer: const CustomDrawer(),
      body: Container(
        color: const Color(0xffFFFFFF),
        child: ListView.builder(
          itemCount: prospectos.length,
          itemBuilder: (context, index) {
            final prospecto = prospectos[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffEDF2FA),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: const Icon(Icons.person,
                      color: Color(0xff000000), size: 40),
                  title: Text(
                    prospecto.nombre,
                    style: GoogleFonts.dosis(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  trailing: const Icon(Icons.call,
                      color: Color.fromARGB(255, 26, 143, 51), size: 30),
                  subtitle: Text(
                    prospecto.descripcion,
                    style: GoogleFonts.dosis(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff000000),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MiPerfilProspectoPage(prospecto: prospecto),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
