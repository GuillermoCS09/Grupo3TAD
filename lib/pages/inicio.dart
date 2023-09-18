import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 400,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFF9F3F3),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: const Text(
              '¡BIENVENIDO, ALONSO!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Image.asset(
            'images/Logo_Usuario.png', // Reemplaza con la ruta de tu imagen
            width: 150,
            height: 150,
          ),
          SizedBox(height: 20),
          Text(
            '¿Qué deseas hacer?',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20.0),
          buildCenteredContainer('Ver mi horario','images/Ver_Horario.jpg',200,130),
          SizedBox(height: 30),
          buildCenteredContainer('Reservar un salón','images/Reservar_Salon.jpg',200,130),
        ],
      ),
    );
  }
}

Widget buildCenteredContainer(String text, String imagePath, double largo, double alto) {
  return Container(
    width: 600.0,
    height: 162.0,
    decoration: BoxDecoration(
      color: Color(0xFFF9F3F3),
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(
        color: Colors.black,
        width: 2.0,
      ),
    ),
    padding: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: largo,
              height: alto,
            ),
            //SizedBox(width: 10.0),
            Container(
              width: 350.0, // Establece el ancho deseado para el contenedor
              child: Column(
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  ElevatedButton(
                    child: Text('IR AHORA'),
                    onPressed: () {
                      // Acción a realizar al presionar el botón
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Color(0xFF6C181B),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}