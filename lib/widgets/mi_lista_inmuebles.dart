import 'package:app/pages/perfil_inmuebles_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/inmueble_model.dart';
import 'custom_drawer.dart';

class MiListaDeInmuebles extends StatefulWidget {
  const MiListaDeInmuebles({super.key});

  @override
  State<MiListaDeInmuebles> createState() => _MiListaDeInmueblesState();
}

class _MiListaDeInmueblesState extends State<MiListaDeInmuebles> {
  final List<Inmueble> inmueble = [
    Inmueble(
        id: 1,
        nombreInmueble: "Casa de Michelle",
        medidasDelTerreno: "100m2",
        cantidadDeHabitaciones: 3,
        precio: 10000,
        cantidadDeWC: 2,
        ubicacion: "Santa Fe, Alvaro Obregón",
        descripcion:
            "Renta sin Aval en 24 horas. Proceso ágil y flexible. / Lease without guarantor with agile and flexible processes in 24 hours."),
    Inmueble(
        id: 2,
        nombreInmueble: "Apartamento en el centro",
        medidasDelTerreno: "80m2",
        cantidadDeHabitaciones: 2,
        precio: 10000,
        cantidadDeWC: 2,
        ubicacion: "Santa Fe, Alvaro Obregón",
        descripcion:
            "Renta sin Aval en 24 horas. Proceso ágil y flexible. / Lease without guarantor with agile and flexible processes in 24 hours."),
    Inmueble(
        id: 3,
        nombreInmueble: "Casa en la playa",
        medidasDelTerreno: "200m2",
        cantidadDeHabitaciones: 4,
        precio: 10000,
        cantidadDeWC: 2,
        ubicacion: "Santa Fe, Alvaro Obregón",
        descripcion:
            "Renta sin Aval en 24 horas. Proceso ágil y flexible. / Lease without guarantor with agile and flexible processes in 24 hours."),
    Inmueble(
        id: 4,
        nombreInmueble: "Apartamento moderno",
        medidasDelTerreno: "90m2",
        cantidadDeHabitaciones: 2,
        precio: 10000,
        cantidadDeWC: 2,
        ubicacion: "Santa Fe, Alvaro Obregón",
        descripcion:
            "Renta sin Aval en 24 horas. Proceso ágil y flexible. / Lease without guarantor with agile and flexible processes in 24 hours."),
    Inmueble(
        id: 5,
        nombreInmueble: "Casa familiar",
        medidasDelTerreno: "150m2",
        cantidadDeHabitaciones: 3,
        precio: 10000,
        cantidadDeWC: 2,
        ubicacion: "Santa Fe, Alvaro Obregón",
        descripcion:
            "Renta sin Aval en 24 horas. Proceso ágil y flexible. / Lease without guarantor with agile and flexible processes in 24 hours."),
  ];

  @override
  Widget build(BuildContext context) {
    String title = "Inmuebles";
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
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0B3C5D),
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
          itemCount: inmueble.length,
          itemBuilder: (context, index) {
            final inmuebles = inmueble[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffEDF2FA),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: const Icon(Icons.home,
                      color: Color(0xff000000), size: 40),
                  title: Text(
                    inmuebles.nombreInmueble,
                    style: GoogleFonts.dosis(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_circle_right_outlined,
                      color: Color(0xff000000), size: 30),
                  subtitle: Text(
                    'Habitaciones: ${inmuebles.cantidadDeHabitaciones}\nMedidas: ${inmuebles.medidasDelTerreno}',
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
                            MiPerfilInmueblesPage(inmueble: inmuebles),
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
