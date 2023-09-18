import 'package:flutter/material.dart';
import 'pages/inicio.dart';
import 'pages/perfil.dart';
import 'pages/reservar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int paginaActual = 0;

  List<Widget> paginas = [
    Inicio(),
    Reservar(),
    Perfil()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'FISI - UNMSM',
            style: TextStyle(
              fontSize: 48,
              fontFamily: 'RobotoSlab',
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF6C181B),
        ),
        body: paginas[paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              paginaActual = index;
            });
          },
          currentIndex: paginaActual,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_module),
              label: 'Reservar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Perfil',
            ),
          ],
          selectedItemColor: Color(0xFF6C181B),
        ),
      ),
    );
  }
}