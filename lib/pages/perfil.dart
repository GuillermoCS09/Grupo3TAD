import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget> [
        titulo(context),
        fichaPerfil(context),
        historialReservas(context)
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
      'Perfil',
      style: TextStyle(fontSize: 16),
    ),
  );
}

Widget fichaPerfil(context){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      color: const Color(0xFFC6C3C0), // Color del Container
      borderRadius: BorderRadius.circular(10.0), // Borde redondeado
      border: Border.all(
        color: Colors.black, // Color del borde
        width: 0.3, // Ancho del borde
      ),
    ),
    width: MediaQuery.of(context).size.width,
    child: ficha(context),
  );
}

Widget ficha(context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      //Container(
      //  decoration: BoxDecoration(
      //    border: Border.all(width: 10, color: Colors.black38),
      //    borderRadius: const BorderRadius.all(Radius.circular(90)),
      //  ),
      //  margin: const EdgeInsets.all(4),
      ClipOval(
        child: Image.asset(
          'images/Logo_Usuario.png',
          width: 100, // Ajusta el ancho de la imagen según tus necesidades
          height: 100, // Ajusta la altura de la imagen según tus necesidades
          fit: BoxFit.cover, // Opcional: ajusta la forma en que la imagen se ajusta al contenedor
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Nombre: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Alonso David Matienzo Torres',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Ciclo: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'VIII',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Escuela Profesional: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Sistemas',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Código de Alumno: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: '20200165',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Correo Electrónico: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'alonso.matienzo@unmsm.edu.pe',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    ],
  );
}

Widget historialReservas(context){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
    //padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      color: const Color(0xFFF9F3F3), // Color del Container
      borderRadius: BorderRadius.circular(10.0), // Borde redondeado
      border: Border.all(
        color: Colors.black, // Color del borde
        width: 0.3, // Ancho del borde
      ),
    ),
    width: MediaQuery.of(context).size.width,
    child: contenidoReservas(context),
  );
}

Widget contenidoReservas(context){
  return Column(
    children: [
      Container(
        decoration: const BoxDecoration(
          color: Color(0xFF6C181B), // Color del Container
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0), // Redondea la esquina superior izquierda
            topRight: Radius.circular(10.0), // Redondea la esquina superior derecha
          ),
        ),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: const Center(
          child: Text(
            'HISTORIAL DE RESERVAS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18, // Tamaño de fuente deseado (opcional)
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 8.0, bottom: 4.0), // Ajusta los valores según desees
        child: Text(
          'Hoy - miércoles, 13 de septiembre de 2023',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
          height: 400,
          child: ListView(
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF), // Color del Container
                    borderRadius: BorderRadius.circular(10.0), // Borde redondeado
                    border: Border.all(
                      color: Colors.black, // Color del borde
                      width: 0.3, // Ancho del borde
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          'Lunes 11 de\nseptiembre de 2023'
                      ),
                      Image.asset('images/salon.jpg', width: 200, height: 200),
                      Column(
                        children: [
                          Text('Aula 201-AP'),
                          Text('8:00 AM - 10:00 AM')
                        ],
                      )
                    ],
                  )
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF), // Color del Container
                    borderRadius: BorderRadius.circular(10.0), // Borde redondeado
                    border: Border.all(
                      color: Colors.black, // Color del borde
                      width: 0.3, // Ancho del borde
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          'Viernes 8 de\nseptiembre de 2023'
                      ),
                      Image.asset('images/salon2.jpg', width: 200, height: 200),
                      Column(
                        children: [
                          Text('Aula 106-NP'),
                          Text('3:00 PM - 5:00 PM')
                        ],
                      )
                    ],
                  )
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF), // Color del Container
                    borderRadius: BorderRadius.circular(10.0), // Borde redondeado
                    border: Border.all(
                      color: Colors.black, // Color del borde
                      width: 0.3, // Ancho del borde
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          'Jueves 7 de\nseptiembre de 2023'
                      ),
                      Image.asset('images/salon3.jpg', width: 200, height: 200),
                      Column(
                        children: [
                          Text('Aula 107-NP'),
                          Text('8:00 AM - 10:00 AM')
                        ],
                      )
                    ],
                  )
              ),
            ],
          )
      )
    ],
  );
}