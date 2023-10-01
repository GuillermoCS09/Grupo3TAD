import 'package:flutter/material.dart';

import 'Calendario.dart';

class Reservar extends StatelessWidget {
  const Reservar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget> [
        titulo(context),
        barraBusqueda(context),
        salones(context)
      ],
    );
  }
}

Widget barraBusqueda(context){
  return Container(
    width: 600.0, // Ancho deseado de la barra de búsqueda
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(30.0), // Controla la forma redonda
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Buscar Aulas',
        prefixIcon: Icon(
            Icons.search,
            color: Colors.black), // Ícono de lupa
        border: InputBorder.none, // Elimina el borde predeterminado
        contentPadding: EdgeInsets.all(16.0), // Espacio interno
      ),
    ),
  );
}

Widget titulo(context){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 65, vertical: 25),
    padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 10),
    width: MediaQuery.of(context).size.width,
    child: const Text(
      'Reserva de Salones',
      style: TextStyle(
          fontSize: 24,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.bold,
          color: Colors.black,
      ),
    ),
  );
}

Widget salones(context){
  return SingleChildScrollView( // Envuelve todo el contenido con un ScrollView
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20.0),
          buildCenteredContainer(
              'Aula 101\nNuevo Pabellón\n8:00 - 10:00 AM\nDisponible',
              'images/salon1.jpg', context, 220, 142
          ),
          const SizedBox(height: 30),
          buildCenteredContainer(
              'Aula 102\nNuevo Pabellón\n8:00 - 10:00 AM\nDisponible',
              'images/salon4.jpg', context, 220, 142
          ),
          const SizedBox(height: 30),
          buildCenteredContainer(
              'Aula 103\nNuevo Pabellón\n8:00 - 10:00 AM\nDisponible',
              'images/salon4.jpg', context, 220, 142
          ),
        ],
      ),
    ),
  );
}

Widget buildCenteredContainer(String text, String imagePath, context ,double largo, double alto) {

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
                  SizedBox(height: 20.0),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TableEventsExample()),
                      );
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

/*
void _showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('PROCESO TERMINADO',style: TextStyle(
          color: Colors.red,),),


        content: const Text('Su reserva ha sido procesada con éxito'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
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
*/