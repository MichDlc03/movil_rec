import 'package:app/pages/perfil_prospectos_page.dart';
import 'package:flutter/material.dart';

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
      "Prospecto 1",
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
      "Prospecto 2",
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
      "Prospecto 3",
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
      "Prospecto 4",
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
    String title = "Mis Prospectos";
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 199, 196, 199),
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: prospectos.length,
        itemBuilder: (context, index) {
          final prospecto = prospectos[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffc9d6df),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                leading: const Icon(Icons.person, color: Colors.deepPurple),
                title: Text(
                  prospecto.nombre,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
                trailing: const Icon(Icons.arrow_circle_right_outlined,
                    color: Colors.deepPurple),
                subtitle: Text(prospecto.descripcion),
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
    );
  }
}
