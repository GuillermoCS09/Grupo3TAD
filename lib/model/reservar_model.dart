class Reserva {
  final int id_salon;
  final String nombre;
  final String tipo;
  final String pabellon;
  final int capacidad;
  final String imagePath;
  Map<String, Map<String, bool>> disponibilidad;

  Reserva(this.id_salon, this.nombre, this.tipo, this.pabellon, this.capacidad, this.imagePath, this.disponibilidad);
}