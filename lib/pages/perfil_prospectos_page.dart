import 'package:app/widgets/mi_lista_prospectos.dart';
import 'package:flutter/material.dart';

class MiPerfilProspectoPage extends StatelessWidget {
  final Prospecto prospecto;

  const MiPerfilProspectoPage({required this.prospecto, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(prospecto.nombre),
        backgroundColor: const Color.fromARGB(255, 199, 196, 199),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  child: Icon(Icons.person),
                  // backgroundImage: AssetImage('assets/profile_placeholder.png'),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      prospecto.nombre,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      prospecto.descripcion,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Inmuebles',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: const Icon(
                        Icons.home,
                        color: Colors.deepPurple,
                        size: 40,
                      ),
                      title: Text(
                        inmueble.nombreInmueble,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Habitaciones: ${inmueble.cantidadDeHabitaciones}\nMedidas: ${inmueble.medidasDelTerreno}',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
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
    );
  }
}
