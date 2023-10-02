import 'package:flutter/material.dart';
import 'barra_inferior.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Proyecto',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4B39EF)),
          useMaterial3: true,
        ),
        home: const Scaffold(body: MyHomeLoginApp())
    );
  }
}

class MyHomeLoginApp extends StatefulWidget {
  const MyHomeLoginApp({super.key});

  @override
  State<MyHomeLoginApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomeLoginApp> {
  final _formKey = GlobalKey<FormState>();
  static final RegExp _emailRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  bool _esEmail(String str)
  {
    return _emailRegExp.hasMatch(str.toLowerCase());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // margin: const EdgeInsets.symmetric(horizontal: 50),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              //const SizedBox(height: 40),
              //Center(
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF4B39EF), // #4B39EF
                      Color(0xFFFF5963), // #FF5963
                      Color(0xFFEE8B60), // #EE8B60
                    ],
                    stops: [0, 0.5, 1],
                    begin: AlignmentDirectional(-1, -1),
                    end: AlignmentDirectional(1, 1),
                  ),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0x00FFFFFF),
                        Colors.white,
                      ],
                      stops: [0, 1],
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 170,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/logo_unmsm_morado.png',
                              width: 118,
                              height: 138,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
                child: Column(
                  children: [
                    // const SizedBox(height: 40),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Correo Institucional',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (!_esEmail(value.toString())){
                          return 'Ingrese su correo correctamente';
                        }
                      },
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Ingrese su contraseña';
                        }
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 80),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      runApp(const MyAppBarra()); //Aca llama a la pestaña inicio
                    }
                  },
                  child: Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'ReadexPro',
                        color: Colors.white
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    // iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    backgroundColor: Color(0xFF4B39EF),
                    foregroundColor: Colors.white,
                    minimumSize: Size(230.0, 50.0),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Bordes redondeados del botón
                      side: BorderSide(
                        color: Colors.transparent, // Color del borde
                        width: 1, // Ancho del borde
                      ),
                    ),
                  ),
                ),
                /*
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    runApp(const MyAppBarra()); //Aca llama a la pestaña inicio
                  }
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(500, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Color(0xFF6C181B), // Color personalizado
                ),
                child: const Text(
                  'INICIAR SESIÓN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
              */
              )
            ],
          ),
        ),
      ),
    );
  }
}
