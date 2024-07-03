import 'package:app/models/inmueble_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiPerfilInmueblesPage extends StatelessWidget {
  final Inmueble inmueble;
  final List<String> imageUrls = [
    'assets/imagenes/casa.jpg',
    'assets/imagenes/casa2.jpg',
    'assets/imagenes/casa3.jpg',
  ];

MiPerfilInmueblesPage({required this.inmueble, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          inmueble.nombreInmueble,
          style: GoogleFonts.dosis(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0A0A0A),
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
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 250,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: imageUrls.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 24),
            Text(
              inmueble.nombreInmueble,
              style: GoogleFonts.dosis(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.square_foot, color: Colors.white),
              title: Text(
                'Medidas del terreno:',
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
              subtitle: Text(
                inmueble.medidasDelTerreno,
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.bed, color: Colors.white),
              title: Text(
                'Cantidad de habitaciones:',
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
              subtitle: Text(
                inmueble.cantidadDeHabitaciones.toString(),
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            // Agrega más ListTile según sea necesario para otros detalles
          ],
        ),
      ),
    );
  }
}
