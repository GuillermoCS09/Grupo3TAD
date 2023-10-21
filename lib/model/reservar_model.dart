class Reserva {
  final String aula;
  final String tipo;
  final String pabellon;
  final int capacidad;
  final String imagePath;
  Map<String, Map<String, bool>> disponibilidad;

  Reserva(this.aula, this.tipo, this.pabellon, this.capacidad, this.imagePath, this.disponibilidad);
}