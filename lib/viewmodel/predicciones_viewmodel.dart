import 'package:tflite_flutter/tflite_flutter.dart';

class misPrediccionViewModel {
  String predValue = "Cargando...";
  late Interpreter interpreter;

  misPrediccionViewModel() {
    _loadModelAndRunInference();
  }

  Future<void> _loadModelAndRunInference() async {
    interpreter = await Interpreter.fromAsset('assets/Modelo.tflite');
    final output = List.filled(1 * 1, 0.0).reshape([1, 1]);
    interpreter.run([96], output);
    final parsedValue = double.parse(output[0][0].toString());
    predValue = parsedValue.round().toString();
  }

  getReservas() {}
}
