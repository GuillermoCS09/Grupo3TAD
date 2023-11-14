import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:proyecto_sm/api_connection/api_connection.dart';
import 'package:proyecto_sm/model/reserva_model.dart';
import '../model/user_model.dart';

class MisReservasViewModel {
  final UserData userData;

  MisReservasViewModel(this.userData);

  Future<List<Reserva>> getReservas(int idEstado, int codUsuario) async {
    List<Reserva> ListaReservas = [];
    final response = await http.get(Uri.parse(API.consultareservas + "?id_estado=$idEstado&codigo_usuario=$codUsuario"));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      if (data['success']) {
        List<dynamic> reservas = data["reservas"];
        for(var reserva in reservas) {
          Reserva objReserva = Reserva(
            idReserva: int.parse(reserva['id_reserva']),
            horaInicio: int.parse(reserva['hora_inicio']),
            horaFin: int.parse(reserva['hora_fin']),
            dia: reserva['dia'],
            fecha: reserva['fecha'],
            idEstado: int.parse(reserva['id_estado']),
            codigoUsuario: int.parse(reserva['codigo_usuario']),
            idSalon: int.parse(reserva['id_salon']),
            nombre: reserva['nombre'],
            pabellon: reserva['pabellon'],
            imagen: reserva['imagen']
          );
          ListaReservas.add(objReserva);
        }
      }else {
        // Manejar el caso en el que no se encontraron registros.
      }
    }else {
      // Manejar errores de conexión.
    }
    return ListaReservas;
  }
}
