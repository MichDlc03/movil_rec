import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/prospecto_model.dart';

class MiPerfilProspectoPage extends StatelessWidget {
  final Prospecto prospecto;

  const MiPerfilProspectoPage({required this.prospecto, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          prospecto.nombre,
          style: GoogleFonts.dosis(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0B3C5D),
      ),
      body: Container(
        color: const Color(0xffFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xffEDF2FA),
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Color(0xff0B3C5D),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        prospecto.nombre,
                        style: GoogleFonts.dosis(
                          textStyle: Theme.of(context).textTheme.headlineMedium,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff333333),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        prospecto.descripcion,
                        style: GoogleFonts.dosis(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                          fontSize: 16,
                          color: const Color(0xff333333),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Inmuebles',
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff333333),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemCount: prospecto.inmuebles.length,
                  itemBuilder: (context, index) {
                    final inmueble = prospecto.inmuebles[index];
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: const Color(0xffEDF2FA),
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: const Icon(
                          Icons.home,
                          color: Color(0xff0B3C5D),
                          size: 40,
                        ),
                        title: Text(
                          inmueble.nombreInmueble,
                          style: GoogleFonts.dosis(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff333333),
                          ),
                        ),
                        subtitle: Text(
                          'Habitaciones: ${inmueble.cantidadDeHabitaciones}\nMedidas: ${inmueble.medidasDelTerreno}',
                          style: GoogleFonts.dosis(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            fontSize: 14,
                            color: const Color(0xff333333),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
