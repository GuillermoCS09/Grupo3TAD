import 'package:flutter/material.dart';
import 'package:proyecto_sm/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../barra_inferior.dart';
import '../model/user_model.dart';

class LoginViewModel {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>(); // Agrega esta línea
  final FirebaseAuthService _auth = FirebaseAuthService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String errorMessage = '';

  static final RegExp _emailRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@unmsm\.edu\.pe$");

  bool isEmailValid(String email) {
    return _emailRegExp.hasMatch(email.toLowerCase());
  }

  bool isPasswordValid(String password) {
    return password.isNotEmpty;
  }

  Future<void> showPasswordIncorrectDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contraseña Incorrecta'),
          content: Text('La contraseña proporcionada es incorrecta. Por favor, inténtelo de nuevo.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  Future<void> signIn(BuildContext context) async {
    final email = emailController.text;
    final password = passwordController.text;

    if (!isEmailValid(email) || !isPasswordValid(password)) {
      errorMessage = 'Ingrese su correo y contraseña correctamente';
      return;
    }

    User? user = await _auth.signInWithEmailAndPassword(email, password);
    if (user != null) {
      print("Usuario ha iniciado sesión exitosamente");
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('usuarios')
          .where('correo', isEqualTo: user.email)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        DocumentSnapshot userData = querySnapshot.docs[0];
        UserData userdatos = UserData(
          nombre: userData['nombre'],
          apellidoPaterno: userData['apellido_paterno'],
          apellidoMaterno: userData['apellido_materno'],
          ciclo: userData['ciclo'],
          codigo: userData['codigo'],
          correo: userData['correo'],
          escuelaProfesional: userData['escuela_profesional'],
          foto: userData['foto']
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyAppBarra(userData: userdatos),
          ),
        );
      } else {
        print("No se encontraron datos de usuario");
      }
    } else {
      showPasswordIncorrectDialog(context);
      print("Ha ocurrido un error");
    }
  }
}