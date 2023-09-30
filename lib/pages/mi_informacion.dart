import 'package:flutter/material.dart';

class MiInformacion extends StatefulWidget {
  const MiInformacion({Key? key}) : super(key: key);

  @override
  _MiInformacionState createState() => _MiInformacionState ();
}

class _MiInformacionState
    extends State<MiInformacion> {
  late MiInformacionModel  _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = MiInformacionModel();

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
    _model.textController5 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF4B39EF),
        automaticallyImplyLeading: false,
        title: Text(
          'Complete Profile',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'ReadexPro',
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Tu información',
                      style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 24,
                          color: Color(0xFF14181B)
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: TextFormField(
                              controller: _model.textController1,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Nombres',
                                labelStyle: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'ReadexPro',
                                  color: Color(0xFF57636C)
                                ),
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'ReadexPro',
                                    color: Color(0xFF57636C)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                    Color(0xFFE0E3E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF4B39EF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'ReadexPro',
                                  color: Color(0xFF57636C)
                              ),
                              validator: (value) => _model.textController1Validator(context, value),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: TextFormField(
                              controller: _model.textController2,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Apellidos',
                                labelStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'ReadexPro',
                                    color: Color(0xFF57636C)
                                ),
                                hintText: 'Apellidos',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'ReadexPro',
                                    color: Color(0xFF57636C)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                    Color(0xFFE0E3E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF4B39EF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'ReadexPro',
                                  color: Color(0xFF57636C)
                              ),
                              validator: (value) => _model.textController2Validator(context, value),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: TextFormField(
                              controller: _model.textController3,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Ciclo',
                                labelStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'ReadexPro',
                                    color: Color(0xFF57636C)
                                ),
                                hintText: 'Ciclo',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'ReadexPro',
                                    color: Color(0xFF57636C)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                    Color(0xFFE0E3E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF4B39EF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'ReadexPro',
                                  color: Color(0xFF57636C)
                              ),
                              validator: (value) => _model.textController3Validator(context, value),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: TextFormField(
                              controller: _model.textController4,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Escuela Profesional',
                                labelStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'ReadexPro',
                                    color: Color(0xFF57636C)
                                ),
                                hintText: 'Escuela Profesional',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'ReadexPro',
                                    color: Color(0xFF57636C)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                    Color(0xFFE0E3E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF4B39EF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'ReadexPro',
                                  color: Color(0xFF57636C)
                              ),
                              validator: (value) => _model.textController4Validator(context, value),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: TextFormField(
                              controller: _model.textController5,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Código de Alumno',
                                labelStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'ReadexPro',
                                    color: Color(0xFF57636C)
                                ),
                                hintText: 'Código de Alumno',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'ReadexPro',
                                    color: Color(0xFF57636C)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE0E3E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF4B39EF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'ReadexPro',
                                  color: Color(0xFF57636C)
                              ),
                              validator: (value) => _model.textController5Validator(context, value),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                    'Guardar cambios',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'ReadexPro'
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  // iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  backgroundColor: Color(0xFF4B39EF),
                  foregroundColor: Colors.white,
                  minimumSize: Size(270.0, 50.0),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Bordes redondeados del botón
                    side: BorderSide(
                      color: Colors.transparent, // Color del borde
                      width: 1, // Ancho del borde
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
}

class MiInformacionModel {
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  TextEditingController? textController4;
  TextEditingController? textController5;

  // State field(s) for TextField widget.
  String? textController1Validator(BuildContext context, String? value) {
    // Lógica de validación para el primer TextFormField
    return null; // Retorna null si la validación es exitosa, o un mensaje de error si falla.
  }
  // State field(s) for TextField widget.
  String? textController2Validator(BuildContext context, String? value) {
    // Lógica de validación para el primer TextFormField
    return null; // Retorna null si la validación es exitosa, o un mensaje de error si falla.
  }
  // State field(s) for TextField widget.
  String? textController3Validator(BuildContext context, String? value) {
    // Lógica de validación para el primer TextFormField
    return null; // Retorna null si la validación es exitosa, o un mensaje de error si falla.
  }
  // State field(s) for TextField widget.
  String? textController4Validator(BuildContext context, String? value) {
    // Lógica de validación para el primer TextFormField
    return null; // Retorna null si la validación es exitosa, o un mensaje de error si falla.
  }
  // State field(s) for TextField widget.
  String? textController5Validator(BuildContext context, String? value) {
    // Lógica de validación para el primer TextFormField
    return null; // Retorna null si la validación es exitosa, o un mensaje de error si falla.
  }

  // Implementa las funciones de validación para los demás TextFormField si es necesario.
  // void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
  }
}