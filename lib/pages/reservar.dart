import 'package:flutter/material.dart';

class Reservar extends StatelessWidget {
  const Reservar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget> [
        titulo(context),
        salones(context)
      ],
    );
  }
}

Widget titulo(context){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      color: const Color(0xFFF9F3F3), // Color del Container
      borderRadius: BorderRadius.circular(10.0), // Borde redondeado
      border: Border.all(
        color: Colors.black, // Color del borde
        width: 0.3, // Ancho del borde
      ),
    ),
    width: MediaQuery.of(context).size.width,
    child: const Text(
      'Reserva de Salones',
      style: TextStyle(fontSize: 16),
    ),
  );
}

Widget salones(context){
  return SingleChildScrollView( // Envuelve todo el contenido con un ScrollView
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20.0),
          buildCenteredContainer(
              'Aula 101\nNuevo Pabellón\n8:00 - 10:00 AM\nDisponible',
              'images/salon1.jpg', context
          ),
          SizedBox(height: 30),
          buildCenteredContainer(
              'Aula 102\nNuevo Pabellón\n8:00 - 10:00 AM\nDisponible',
              'images/salon4.jpg', context
          ),
          SizedBox(height: 30),
          buildCenteredContainer(
              'Aula 103\nNuevo Pabellón\n8:00 - 10:00 AM\nDisponible',
              'images/salon4.jpg', context
          ),
        ],
      ),
    ),
  );
}

Widget buildCenteredContainer(String text, String url, context) {
  return Container(
    width: 500.0,
    height: 140.0,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(
        color: Color(0xFF6C181B),
        width: 2.0,
      ),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(url),
        ),
        Expanded(
          child: Align(
            alignment: FractionalOffset.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 30, top: 10), // Ajusta los valores de left y top según tus necesidades
          child: ElevatedButton(
            onPressed: () {
              _showPopup(context);
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF6C181B), // Define el color de fondo del botón como rojo
            ),
            child: Text('Reservar Salón'),
          ),
        )
      ],
    ),
  );
}

void _showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('PROCESO TERMINADO',style: TextStyle(
          color: Colors.red,),),


        content: Text('Su reserva ha sido procesada con éxito'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Listo',
              style: TextStyle(
                color: Colors.red, // Color rojo para el texto del botón
              ),
            ),
          ),
        ],
      );
    },
  );
}