import 'package:flutter/material.dart';
import 'package:proyecto_sm/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MiInformacionViewModel {
  final UserData userData;
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  TextEditingController textController3 = TextEditingController();
  TextEditingController textController4 = TextEditingController();
  TextEditingController textController5 = TextEditingController();
  TextEditingController textController6 = TextEditingController();
  TextEditingController textController7 = TextEditingController();

  MiInformacionViewModel(this.userData);

  String? textController1Validator(String? value) {
    return null;
  }

  String? textController2Validator(String? value) {
    return null;
  }

  String? textController3Validator(String? value) {
    return null;
  }

  String? textController4Validator(String? value) {
    return null;
  }

  String? textController5Validator(String? value) {
    return null;
  }

  String? textController6Validator(String? value) {
    return null;
  }

  String? textController7Validator(String? value) {
    return null;
  }

  void updateUserInformation() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userRef = FirebaseFirestore.instance.collection('usuarios').doc(user.uid);

      try {
        await userRef.update({
          'nombre': textController1.text,
          'apellido_paterno': textController2.text,
          'apellido_materno': textController3.text,
          'ciclo': textController4.text,
          'escuela_profesional': textController5.text,
          'codigo': int.parse(textController6.text),
          'correo': textController7.text,
        });
        print("Información actualizada exitosamente.");
      } catch (error) {
        print("Error al actualizar la información: $error");
      }
    }
  }
}