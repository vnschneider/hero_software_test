import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAuthController extends GetxController {
  final FirebaseAuth instance = FirebaseAuth.instance;
  late final Rx<User?> user;

  snackMessage({required String message}) {
    Get.showSnackbar(
      GetSnackBar(
        snackPosition: SnackPosition.TOP,
        borderRadius: 10,
        margin: const EdgeInsets.all(20),
        backgroundColor: const Color(0xFF9ff238),
        isDismissible: true,
        duration: const Duration(seconds: 2),
        borderColor: Colors.black87,
        titleText: const Text(
          'Erro!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        messageText: Text(
          message,
          style: const TextStyle(fontSize: 17),
        ),
      ),
    );
  }

  Future<void> loginWithEmailAndPassword(
      {required String emailAddress, required String password}) async {
    try {
      await instance.signInWithEmailAndPassword(
          email: emailAddress, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('User not found.');
        snackMessage(message: 'Usuário não encontrado!');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
        snackMessage(message: 'Senha ou e-mail incorretos!');
      }
    } catch (e) {
      log('ERROR FIREBASE', error: e);
      snackMessage(message: 'Erro ao logar, tente novamente!');
    }
    update();
  }

  Future<void> createAccount({
    required String username,
    required String emailAddress,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
        snackMessage(message: 'Este e-mail já está em uso!');
      }
    } catch (e) {
      log('ERROR FIREBASE', error: e);
      snackMessage(message: 'Erro ao acessar conta, tente novamente!');
    }
    Get.offAllNamed('/home');
    update();
  }

  resetPassword({required String email}) async {
    await instance.sendPasswordResetEmail(email: email).catchError(
          (error) => snackMessage(
              message: 'Erro ao recuperar senha, tente novamente!'),
        );
    update();
  }

  signOut({required BuildContext context}) async {
    try {
      await instance.signOut();
    } on FirebaseAuthException catch (e) {
      log('Não foi possível sair, tente novamente', error: e);
      snackMessage(message: 'Erro ao sair, tente novamente!');
    }
    Get.offNamed('/splash');
    update();
  }
}
