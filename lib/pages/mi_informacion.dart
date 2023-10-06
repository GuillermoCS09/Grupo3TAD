import 'package:flutter/material.dart';

class MiInformacion extends StatefulWidget {
  const MiInformacion({Key? key}) : super(key: key);

  @override
  _MiInformacionState createState() => _MiInformacionState ();
}

class _MiInformacionState extends State<MiInformacion> {
  late MiInformacionModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String nombre = "Alonso";
  String apellido_paterno = "Matienzo";
  String ciclo = "VIII";
  String escuela_profesional = "Ingeniería de Sistemas";
  String codigo = "20202020";
  String correo = "alonso.matienzo@unmsm.edu.pe";

  @override
  void initState() {
    super.initState();
    _model = MiInformacionModel();

    // _model.textController1 ??= TextEditingController();
    // _model.textController2 ??= TextEditingController();
    // _model.textController3 ??= TextEditingController();
    // _model.textController4 ??= TextEditingController();
    // _model.textController5 ??= TextEditingController();

    _model.textController1.text = nombre;
    _model.textController2.text = apellido_paterno;
    _model.textController3.text = ciclo;
    _model.textController4.text = escuela_profesional;
    _model.textController5.text = codigo;
    _model.textController6.text = correo;
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
        backgroundColor: const Color(0xFF4B39EF),
        // automaticallyImplyLeading: false,
        title: const Text(
          'Información Personal',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'ReadexPro',
            fontWeight: FontWeight.bold
          ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
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
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CampoTexto(context, _model.textController1, 'Nombres', (value) => _model.textController1Validator(context, value)),
                    CampoTexto(context, _model.textController2, 'Apellidos', (value) => _model.textController2Validator(context, value)),
                    CampoTexto(context, _model.textController3, 'Ciclo', (value) => _model.textController3Validator(context, value)),
                    CampoTexto(context, _model.textController4, 'Escuela Profesional', (value) => _model.textController4Validator(context, value)),
                    CampoTexto(context, _model.textController5, 'Código', (value) => _model.textController5Validator(context, value)),
                    CampoTexto(context, _model.textController6, 'Correo institucional', (value) => _model.textController6Validator(context, value)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 24, 16, 44),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 16),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              // iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              backgroundColor: Colors.white,
                              foregroundColor: const Color(0xFF14181B),
                              minimumSize: const Size(230.0, 52.0),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12), // Bordes redondeados del botón
                                side: const BorderSide(
                                  color: Color(0xFFE0E3E7), // Color del borde
                                  width: 2, // Ancho del borde
                                ),
                              ),
                            ),
                            child: const Text(
                              'Cancelar',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'ReadexPro'
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 16),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              nombre = _model.textController1.text;
                              apellido_paterno = _model.textController2.text;
                              ciclo = _model.textController3.text;
                              escuela_profesional = _model.textController4.text;
                              codigo = _model.textController5.text;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              // iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              backgroundColor: const Color(0xFF4B39EF),
                              foregroundColor: Colors.white,
                              minimumSize: const Size(230.0, 52.0),
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
                              'Guardar cambios',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'ReadexPro'
                              ),
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
  }
}

Widget CampoTexto(BuildContext context, TextEditingController controller, String label, String? Function(String?)? validator) {
  return Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
          child: TextFormField(
            controller: controller,
            obscureText: false,
            decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'ReadexPro',
                  color: Color(0xFF57636C)
              ),
              hintStyle: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'ReadexPro',
                  color: Color(0xFF57636C)
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFE0E3E7),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFF4B39EF),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFFF5963),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFFF5963),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            style: const TextStyle(
                fontSize: 14,
                fontFamily: 'ReadexPro',
                color: Color(0xFF57636C)
            ),
            validator: validator,//(value) => _model.textController1Validator(context, value),
          ),
        ),
      ),
    ],
  );
}

class MiInformacionModel {
  // TextEditingController? textController1;
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  TextEditingController textController3 = TextEditingController();
  TextEditingController textController4 = TextEditingController();
  TextEditingController textController5 = TextEditingController();
  TextEditingController textController6 = TextEditingController();

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
  String? textController6Validator(BuildContext context, String? value) {
    // Lógica de validación para el primer TextFormField
    return null; // Retorna null si la validación es exitosa, o un mensaje de error si falla.
  }

  // Implementa las funciones de validación para los demás TextFormField si es necesario.
  // void initState(BuildContext context) {}

  void dispose() {
    textController1.dispose();
    textController2.dispose();
    textController3.dispose();
    textController4.dispose();
    textController5.dispose();
    textController6.dispose();
  }
}