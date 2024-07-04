class Inmueble {
  final int id;
  final String nombreInmueble;
  final String medidasDelTerreno;
  final int cantidadDeHabitaciones;
  int? cantidadDeWC;
  int? precio;
  String? ubicacion;
  String? descripcion;

  Inmueble({
    required this.id,
    required this.nombreInmueble,
    required this.medidasDelTerreno,
    required this.cantidadDeHabitaciones,
    this.cantidadDeWC,
    this.precio,
    this.ubicacion,
    this.descripcion
  });
}
