import 'package:proyecto_sm/model/disponibilidad_model.dart';

class Reserva {
  int idSalon;
  String nombre;
  String tipo;
  String pabellon;
  int capacidad;
  String imagePath;
  List<Disponibilidad> disponibilidades;

  Reserva({
    required this.idSalon,
    required this.nombre,
    required this.tipo,
    required this.pabellon,
    required this.capacidad,
    required this.imagePath,
    required this.disponibilidades
  });
}