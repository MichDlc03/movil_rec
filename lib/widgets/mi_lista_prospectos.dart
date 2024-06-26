import 'package:app/pages/perfil_prospectos_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Prospecto {
  final String nombre;
  final String descripcion;
  final List<Inmueble> inmuebles;

  Prospecto(this.nombre, this.descripcion, this.inmuebles);
}

class Inmueble {
  final int id;
  final String nombreInmueble;
  final String medidasDelTerreno;
  final int cantidadDeHabitaciones;

  Inmueble({
    required this.id,
    required this.nombreInmueble,
    required this.medidasDelTerreno,
    required this.cantidadDeHabitaciones,
  });
}

class MiListaDeProspectos extends StatefulWidget {
  const MiListaDeProspectos({super.key});

  @override
  State<MiListaDeProspectos> createState() => _MiListaDeProspectosState();
}

class _MiListaDeProspectosState extends State<MiListaDeProspectos> {
  final List<Prospecto> prospectos = [
    Prospecto(
      "Michelle Jimenez",
      "Asesor inmobiliario",
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
      "Asesor inmobiliario",
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
      "Provisional",
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
      "Gerente de ventas",
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
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.white)),
        ],
        centerTitle: true,
        backgroundColor: const Color(0xff0A0A0A),
        title: Text(
          title,
          style: GoogleFonts.dosis(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
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
        child: ListView.builder(
          itemCount: prospectos.length,
          itemBuilder: (context, index) {
            final prospecto = prospectos[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff3B3535),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: const Icon(Icons.person,
                      color: Color(0xffF0F5F9), size: 40),
                  title: Text(
                    prospecto.nombre,
                    style: GoogleFonts.dosis(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_circle_right_outlined,
                      color: Color(0xffF0F5F9), size: 30),
                  subtitle: Text(
                    prospecto.descripcion,
                    style: GoogleFonts.dosis(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffe1e4e6),
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
