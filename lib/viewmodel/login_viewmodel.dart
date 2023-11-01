import 'package:flutter/material.dart';
import 'package:proyecto_sm/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../barra_inferior.dart';
import '../model/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:proyecto_sm/api_connection/api_connection.dart';

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
      final response = await http.post(
        Uri.parse(API.consultalogin),
        body: {
          "correo": user.email,
        },
      );
      if (response.statusCode == 200) {
        print("azzzzzspodkaspokd");
        print("Respuesta del servidor: ${response.body}");
        final data = json.decode(response.body);
        if (data['success']) {
            UserData userdatos = UserData(
                nombre: data['nombre'],
                apellidoPaterno: data['apellido_paterno'],
                apellidoMaterno: data['apellido_materno'],
                ciclo: data['ciclo'],
                codigo: int.parse(data['codigo_usuario']),
                correo: data['correo'],
                escuelaProfesional: data['escuela_profesional'],
                foto: data['foto']
            );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyAppBarra(userData: userdatos),
            ),
          );
        } else {
          print("1xdas------");
        }
      }else {
        // Manejar errores de conexión.
        print("2as------");
      }
    } else {
      showPasswordIncorrectDialog(context);
      print("Ha ocurrido un error");
    }
  }
}