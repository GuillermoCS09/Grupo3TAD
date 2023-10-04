import 'package:flutter/material.dart';

import 'Calendario.dart';

class Reservar extends StatelessWidget {
  const Reservar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget> [
          titulo(context),
          barraBusqueda(context),
          salones(context)
        ],
      ),
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
    child: const TextField(
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
  return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFF1F4F8),
          ),
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 44),
                  child: ListView(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        buildCenteredContainer(context, 'Aula 101', 'Nuevo Pabellón', 'assets/images/salon1.jpg'),
                        buildCenteredContainer(context, 'Aula 102', 'Nuevo Pabellón', 'assets/images/salon2.jpg'),
                        buildCenteredContainer(context, 'Aula 103', 'Antiguo Pabellón', 'assets/images/salon3.jpg'),
                      ]
                  ),
                ),
              ]
          ),
        ),
      ]
  );
}

Widget buildCenteredContainer(BuildContext context, String aula, String pabellon, String imagePath) {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
    child: Container(
      width: 220,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: Color(0x33000000),
            offset: Offset(0, 2),
          )
        ],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFE0E3E7),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: 192,
                height: 144,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Text(
                      aula,
                      style: const TextStyle(
                        fontFamily: 'ReadexPro',
                        fontSize: 16,
                        color: Color(0xFF14181B),
                      ),
                    ),
                  ),
                  Text(
                    pabellon,
                    style: const TextStyle(
                      fontFamily: 'ReadexPro',
                      fontSize: 14,
                      color: Color(0xFF57636C),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(
                        0.00, 0.00),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TableEventsExample()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          // iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          backgroundColor: const Color(0xFF4B39EF),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(113.0, 40.0),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Bordes redondeados del botón
                            side: const BorderSide(
                              color: Colors.transparent, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                        ),
                        child: const Text(
                          'Ver detalles',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              fontFamily: 'ReadexPro'
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  /*
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
  */
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