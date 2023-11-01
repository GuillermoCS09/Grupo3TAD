import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:proyecto_sm/api_connection/api_connection.dart';
import 'package:proyecto_sm/model/reservar_model.dart';

class ReservarViewModel {

  String predValue = "Cargando...";
  late Interpreter interpreter;
  get reserva => null;

  ReservarViewModel() {
    _loadModelAndRunInference();
  }

  Future<void> _loadModelAndRunInference() async {
    interpreter = await Interpreter.fromAsset('assets/Modelo.tflite');
    final output = List.filled(1 * 1, 0.0).reshape([1, 1]);
    interpreter.run([96], output);
    final parsedValue = double.parse(output[0][0].toString());
    predValue = parsedValue.round().toString();
  }

  Future<List<Reserva>> getReservas() async {
    List<Reserva> ListaReservas = [];
    final response = await http.get(Uri.parse(API.consultasalones));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      if (data['success']) {
        List<dynamic> salones = data["salones"];
        for(var salon in salones) {
          Reserva reserva = Reserva(
            nombre: salon['nombre'],
            tipo: salon['tipo_salon'],
            pabellon: salon['pabellon'],
            capacidad: int.parse(salon['capacidad']),
            imagePath: salon['imagen'],
          );
          ListaReservas.add(reserva);
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