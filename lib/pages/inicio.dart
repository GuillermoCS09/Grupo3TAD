import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              '       Bienvenido\nAlonso Matienzo',
              style: TextStyle(
                fontFamily: 'Outfit',
                fontSize: 24,
                color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Icon(
            Icons.location_history,
            color: Colors.black,
            size: 150,
          ),
          SizedBox(height: 20),
          Text(
            '¿Qué deseas hacer?',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Outfit',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 30),
          buildCenteredContainer('Ver\nmi\nhorario','assets/images/Ver_Horario.jpg',220,142),
          SizedBox(height: 30),
          buildCenteredContainer('Reservar\nun\nsalón','assets/images/Reservar_Salon.jpg',220,142),
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
    ),
    padding: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0), // El valor controla la circularidad del borde
              child: Image.asset(
                imagePath,
                width: largo,
                height: alto,
              ),
            ),
            Container(
              width: 350.0, // Ancho deseado para el contenedor del texto y el botón
              child: Column(
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'ReadexPro',
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  ElevatedButton(
                    child: Text(
                      'IR AHORA',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      // Acción a realizar al presionar el botón
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Color(0xFF4B39EF),
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