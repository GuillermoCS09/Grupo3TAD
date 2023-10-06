import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:in_app_review/in_app_review.dart';
import 'mi_informacion.dart';
import 'mis_reservas.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  _Perfil createState() => _Perfil();
}

class _Perfil extends State<Perfil> {
  final unfocusNode = FocusNode();
  bool? switchValue;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return GestureDetector(
      onTap: () => unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF4B39EF),
        body: Align(
          alignment: const AlignmentDirectional(0.00, 0.00),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 200,
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Container(
                          width: 180,
                          height: 180,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/Logo_Usuario.png',
                                width: 180,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 12),
                child: Text(
                  'Alonso Matienzo',
                  textAlign: TextAlign.center,
                  style: TextStyle( // Corregido: FlutterFlowTheme.of(context).headlineSmall.override(...)
                    fontFamily: 'Outfit',
                    color: Colors.white, // Cambiado: FlutterFlowTheme.of(context).info
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                child: Text(
                  'alonso.matienzo@unmsm.com',
                  style: TextStyle( // Corregido: FlutterFlowTheme.of(context).titleSmall.override(...)
                    fontFamily: 'ReadexPro',
                    color: Colors.white, // Cambiado: FlutterFlowTheme.of(context).accent4
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 400,
                  decoration: const BoxDecoration(
                    color: Colors.white, // Cambiado: FlutterFlowTheme.of(context).secondaryBackground
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x33000000),
                        offset: Offset(0, -1),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                child: Text(
                                  'Ajustes',
                                  style: TextStyle( // Corregido: FlutterFlowTheme.of(context).headlineSmall
                                    fontFamily: 'Outfit',
                                    fontSize: 24, // Tamaño de fuente añadido
                                    color: Color(0xFF14181B), // Cambiado: FlutterFlowTheme.of(context).info
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const MiInformacion(),
                                      ),
                                    );
                                  },
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 16, 8),
                                        child: Icon(
                                          Icons.edit,
                                          color: Color(0xFF57636C),
                                          size: 24,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 12, 0),
                                          child: Text(
                                              'Información personal',
                                              textAlign: TextAlign.start,
                                              style:
                                              TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'ReadexPro',
                                                color: Color(0xFF57636C),
                                              )
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Editar Perfil',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'ReadexPro',
                                          color: Color(0xFF4B39EF),
                                          fontSize: 14, // Tamaño de fuente personalizado
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => MisReservas(),
                                      ),
                                    );
                                  },
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 16, 8),
                                        child: Icon(
                                          Icons.calendar_month,
                                          color: Color(0xFF57636C),
                                          size: 24,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 12, 0),
                                          child: Text(
                                              'Ver mis reservas',
                                              textAlign: TextAlign.start,
                                              style:
                                              TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'ReadexPro',
                                                color: Color(0xFF57636C),
                                              )
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Historial',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'ReadexPro',
                                          color: Color(0xFF4B39EF),
                                          fontSize: 14, // Tamaño de fuente personalizado
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 16, 8),
                                      child: Icon(
                                        Icons.notifications_active,
                                        color: Color(0xFF57636C),
                                        size: 24,
                                      ),
                                    ),
                                    const Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 12, 0),
                                        child: Text(
                                          'Mostrar notificaciones',
                                          textAlign: TextAlign.start,
                                          style:
                                            TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'ReadexPro',
                                              color: Color(0xFF57636C),
                                            )
                                        ),
                                      ),
                                    ),
                                    Switch.adaptive(
                                      value: switchValue ??= true, // crear bool para el valor
                                      onChanged: (newValue) async {
                                        setState(() => switchValue = newValue!);
                                      },
                                      activeColor:
                                      const Color(0xFF4B39EF),
                                      activeTrackColor:
                                      const Color(0x4D4B39EF),
                                      inactiveTrackColor:
                                      const Color(0xFFE0E3E7),
                                      inactiveThumbColor:
                                      const Color(0xFF57636C),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child:
                                InkWell(
                                  onTap: _showRatingDialog,
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 16, 8),
                                        child: Icon(
                                          Icons.star,
                                          color: Color(0xFF57636C),
                                          size: 24,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 12, 0),
                                          child: Text(
                                            'Califícanos',
                                            textAlign: TextAlign.start,
                                            style:
                                              TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'ReadexPro',
                                                color: Color(0xFF57636C),
                                              )
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Deja un comentario',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'ReadexPro',
                                          color: Color(0xFF4B39EF),
                                          fontSize: 14, // Tamaño de fuente personalizado
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 16, 8),
                                      child: Icon(
                                        Icons.login_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 12, 0),
                                        child: Text(
                                          'Salir de mi cuenta',
                                          textAlign: TextAlign.start,
                                          style:
                                            TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'ReadexPro',
                                              color: Color(0xFF57636C),
                                            )
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Cerrar Sesión',
                                      style: TextStyle(
                                        fontFamily: 'ReadexPro',
                                        color: Color(0xFF4B39EF),
                                        fontSize: 14, // Peso de fuente personalizado
                                        // Otros atributos de estilo de texto que desees personalizar
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showRatingDialog() {
    // actual store listing review & rating
    void _rateAndReviewApp() async {
      // refer to: https://pub.dev/packages/in_app_review
      final _inAppReview = InAppReview.instance;

      if (await _inAppReview.isAvailable()) {
        print('request actual review from store');
        _inAppReview.requestReview();
      } else {
        print('open actual store listing');
        // TODO: use your own store ids
        _inAppReview.openStoreListing(
          appStoreId: '<your app store id>',
          microsoftStoreId: '<your microsoft store id>',
        );
      }
    }

    final _dialog = RatingDialog(
      initialRating: 1.0,
      // your app's name?
      title: const Text(
        'Puntúanos',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      // encourage your user to leave a high rating?
      message: const Text(
        '¿Te está gustando nuestra aplicación? ¡Califícanos y déjanos tus comentarios.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
      // your app's logo?
      image: Image.asset('assets/images/logo_unmsm_morado.png', width: 100, height: 100),
      submitButtonText: 'Enviar',
      commentHint: '¡Deja tu comentario!',
      onCancelled: () => print('cancelled'),
      onSubmitted: (response) {
        print('rating: ${response.rating}, comment: ${response.comment}');

        // TODO: add your own logic
        if (response.rating < 3.0) {
          // send their comments to your email or anywhere you wish
          // ask the user to contact you instead of leaving a bad review
        } else {
          _rateAndReviewApp();
        }
      },
    );

    // show the dialog
    showDialog(
      context: context,
      barrierDismissible: true, // set to false if you want to force a rating
      builder: (context) => _dialog,
    );
  }
}

// class Perfil extends StatelessWidget {
//   const Perfil({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: <Widget> [
//         titulo(context),
//         fichaPerfil(context),
//         historialReservas(context)
//       ],
//     );
//   }
// }
//
// Widget titulo(context){
//   return Container(
//     margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
//     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//     decoration: BoxDecoration(
//       color: const Color(0xFFF9F3F3), // Color del Container
//       borderRadius: BorderRadius.circular(10.0), // Borde redondeado
//       border: Border.all(
//         color: Colors.black, // Color del borde
//         width: 0.3, // Ancho del borde
//       ),
//     ),
//     width: MediaQuery.of(context).size.width,
//     child: const Text(
//       'Perfil',
//       style: TextStyle(fontSize: 16),
//     ),
//   );
// }
//
// Widget fichaPerfil(context){
//   return Container(
//     margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
//     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//     decoration: BoxDecoration(
//       color: const Color(0xFFC6C3C0), // Color del Container
//       borderRadius: BorderRadius.circular(10.0), // Borde redondeado
//       border: Border.all(
//         color: Colors.black, // Color del borde
//         width: 0.3, // Ancho del borde
//       ),
//     ),
//     width: MediaQuery.of(context).size.width,
//     child: ficha(context),
//   );
// }
//
// Widget ficha(context){
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       //Container(
//       //  decoration: BoxDecoration(
//       //    border: Border.all(width: 10, color: Colors.black38),
//       //    borderRadius: const BorderRadius.all(Radius.circular(90)),
//       //  ),
//       //  margin: const EdgeInsets.all(4),
//       ClipOval(
//         child: Image.asset(
//           'images/Logo_Usuario.png',
//           width: 100, // Ajusta el ancho de la imagen según tus necesidades
//           height: 100, // Ajusta la altura de la imagen según tus necesidades
//           fit: BoxFit.cover, // Opcional: ajusta la forma en que la imagen se ajusta al contenedor
//         ),
//       ),
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           RichText(
//             text: const TextSpan(
//               children: <TextSpan>[
//                 TextSpan(text: 'Nombre: ',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 TextSpan(
//                   text: 'Alonso David Matienzo Torres',
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           RichText(
//             text: const TextSpan(
//               children: <TextSpan>[
//                 TextSpan(text: 'Ciclo: ',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 TextSpan(
//                   text: 'VIII',
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           RichText(
//             text: const TextSpan(
//               children: <TextSpan>[
//                 TextSpan(text: 'Escuela Profesional: ',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 TextSpan(
//                   text: 'Sistemas',
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           RichText(
//             text: const TextSpan(
//               children: <TextSpan>[
//                 TextSpan(text: 'Código de Alumno: ',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 TextSpan(
//                   text: '20200165',
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           RichText(
//             text: const TextSpan(
//               children: <TextSpan>[
//                 TextSpan(text: 'Correo Electrónico: ',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 TextSpan(
//                   text: 'alonso.matienzo@unmsm.edu.pe',
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       )
//     ],
//   );
// }
//
// Widget historialReservas(context){
//   return Container(
//     margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
//     //padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//     decoration: BoxDecoration(
//       color: const Color(0xFFF9F3F3), // Color del Container
//       borderRadius: BorderRadius.circular(10.0), // Borde redondeado
//       border: Border.all(
//         color: Colors.black, // Color del borde
//         width: 0.3, // Ancho del borde
//       ),
//     ),
//     width: MediaQuery.of(context).size.width,
//     child: contenidoReservas(context),
//   );
// }
//
// Widget contenidoReservas(context){
//   return Column(
//     children: [
//       Container(
//         decoration: const BoxDecoration(
//           color: Color(0xFF6C181B), // Color del Container
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(10.0), // Redondea la esquina superior izquierda
//             topRight: Radius.circular(10.0), // Redondea la esquina superior derecha
//           ),
//         ),
//         width: MediaQuery.of(context).size.width,
//         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//         child: const Center(
//           child: Text(
//             'HISTORIAL DE RESERVAS',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 18, // Tamaño de fuente deseado (opcional)
//             ),
//           ),
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(top: 8.0, bottom: 4.0), // Ajusta los valores según desees
//         child: Text(
//           'Hoy - miércoles, 13 de septiembre de 2023',
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//       ),
//       SizedBox(
//           height: 400,
//           child: ListView(
//             children: <Widget>[
//               Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                   decoration: BoxDecoration(
//                     color: const Color(0xFFFFFFFF), // Color del Container
//                     borderRadius: BorderRadius.circular(10.0), // Borde redondeado
//                     border: Border.all(
//                       color: Colors.black, // Color del borde
//                       width: 0.3, // Ancho del borde
//                     ),
//                   ),
//                   width: MediaQuery.of(context).size.width,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                           'Lunes 11 de\nseptiembre de 2023'
//                       ),
//                       Image.asset('images/salon.jpg', width: 200, height: 200),
//                       Column(
//                         children: [
//                           Text('Aula 201-AP'),
//                           Text('8:00 AM - 10:00 AM')
//                         ],
//                       )
//                     ],
//                   )
//               ),
//               Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                   decoration: BoxDecoration(
//                     color: const Color(0xFFFFFFFF), // Color del Container
//                     borderRadius: BorderRadius.circular(10.0), // Borde redondeado
//                     border: Border.all(
//                       color: Colors.black, // Color del borde
//                       width: 0.3, // Ancho del borde
//                     ),
//                   ),
//                   width: MediaQuery.of(context).size.width,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                           'Viernes 8 de\nseptiembre de 2023'
//                       ),
//                       Image.asset('images/salon2.jpg', width: 200, height: 200),
//                       Column(
//                         children: [
//                           Text('Aula 106-NP'),
//                           Text('3:00 PM - 5:00 PM')
//                         ],
//                       )
//                     ],
//                   )
//               ),
//               Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                   decoration: BoxDecoration(
//                     color: const Color(0xFFFFFFFF), // Color del Container
//                     borderRadius: BorderRadius.circular(10.0), // Borde redondeado
//                     border: Border.all(
//                       color: Colors.black, // Color del borde
//                       width: 0.3, // Ancho del borde
//                     ),
//                   ),
//                   width: MediaQuery.of(context).size.width,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                           'Jueves 7 de\nseptiembre de 2023'
//                       ),
//                       Image.asset('images/salon3.jpg', width: 200, height: 200),
//                       Column(
//                         children: [
//                           Text('Aula 107-NP'),
//                           Text('8:00 AM - 10:00 AM')
//                         ],
//                       )
//                     ],
//                   )
//               ),
//             ],
//           )
//       )
//     ],
//   );
// }