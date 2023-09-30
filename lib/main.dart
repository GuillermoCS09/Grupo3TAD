import 'package:flutter/material.dart';
import 'splash.dart';

//Proyecto Grupo 3 - Taller de Desarrollo Movil

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto Grupo 3',
      home: MyAppSplash(),
    );
  }
}
