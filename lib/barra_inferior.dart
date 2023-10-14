import 'package:flutter/material.dart';
import 'pages/inicio.dart';
import 'pages/perfil.dart';
import 'pages/reservar.dart';
import 'package:proyecto_sm/user_data.dart';

class MyAppBarra extends StatefulWidget {
  final UserData userData;

  MyAppBarra({required this.userData});

  @override
  _MyAppState createState() => _MyAppState(userData);
}

class _MyAppState extends State<MyAppBarra> {
  int paginaActual = 0;
  late List<Widget> paginas;
  final UserData userData;

  _MyAppState(this.userData);

  @override
  void initState() {
    super.initState();
    paginas = [
      Inicio(userData: userData),
      const Reservar(),
      Perfil(userData: userData),
    ];
  }

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
            icon: const Icon(
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
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
                size: 24,
              ),
              onPressed: () {
                // Acción para configuraciones
              },
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        body: paginas[paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
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