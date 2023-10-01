import 'package:flutter/material.dart';
import 'pages/inicio.dart';
import 'pages/perfil.dart';
import 'pages/reservar.dart';

void main() {
  runApp(const MyAppBarra());
}

class MyAppBarra extends StatefulWidget {
  const MyAppBarra({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppBarra> {
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
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFF101213),
                size: 30,
              ),
              onPressed: () async {
                //context.pop();
              },
            ),
            title: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/Fondo_Cabecera.png',
                width: 200,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 24,
                ),
                onPressed: () {
                },
              ),
            ],
            centerTitle: true,
            elevation: 0
        ),
        body: paginas[paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              paginaActual = index;
            });
          },
          currentIndex: paginaActual,
          items: const [
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
          selectedItemColor: const Color(0xFF4B39EF),
        ),
      ),
    );
  }
}