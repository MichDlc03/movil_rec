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
        backgroundColor: const Color(0xff0B3C5D),
      ),
      body: Container(
        color: const Color(0xffEDF2FA), 
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
                color: Colors.black, 
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.square_foot, color: Color(0xff0B3C5D)),
              title: Text(
                'Medidas del terreno:',
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 16,
                  color: Colors.black, 
                ),
              ),
              subtitle: Text(
                inmueble.medidasDelTerreno,
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 14,
                  color: Colors.black, 
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.bed, color: Color(0xff0B3C5D)),
              title: Text(
                'Cantidad de habitaciones:',
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 16,
                  color: Colors.black, 
                ),
              ),
              subtitle: Text(
                inmueble.cantidadDeHabitaciones.toString(),
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 14,
                  color: Colors.black, 
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.wc, color: Color(0xff0B3C5D)),
              title: Text(
                'Cantidad de baños:',
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 16,
                  color: Colors.black, 
                ),
              ),
              subtitle: Text(
                inmueble.cantidadDeWC.toString(),
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 14,
                  color: Colors.black, 
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.attach_money, color: Color(0xff0B3C5D)),
              title: Text(
                'Precio:',
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 16,
                  color: Colors.black, 
                ),
              ),
              subtitle: Text(
                inmueble.precio.toString(),
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 14,
                  color: Colors.black, 
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.location_city, color: Color(0xff0B3C5D)),
              title: Text(
                'Ubicación:',
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 16,
                  color: Colors.black, 
                ),
              ),
              subtitle: Text(
                inmueble.ubicacion.toString(),
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 14,
                  color: Colors.black, 
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.description, color: Color(0xff0B3C5D)),
              title: Text(
                'Descripción:',
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 16,
                  color: Colors.black, 
                ),
              ),
              subtitle: Text(
                inmueble.descripcion.toString(),
                style: GoogleFonts.dosis(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 14,
                  color: Colors.black, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}