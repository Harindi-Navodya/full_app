import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:full_app/src/features/authentication/screens/dashboard/dashboard_page.dart';
import 'package:full_app/src/features/authentication/screens/welcome_screen.dart';
import 'package:full_app/src/repository/authentication_repository/exception/signup_email_password_failure.dart';

import 'exception/login_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  void _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const WelcomeScreen());
    } else {
      Get.offAll(() => const Dashboard());
    }
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      Get.snackbar('Sign Up Error', ex.message, backgroundColor: Colors.red);
      throw ex;
    } catch (e) {
      const ex = SignUpWithEmailAndPasswordFailure();
      Get.snackbar('Sign Up Error', ex.message, backgroundColor: Colors.red);
      throw ex;
    }
  }

  /*Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        'Login Error',
        e.message ??
            'Unknown error', // Use a default value if e.message is null
        backgroundColor: Colors.red,
      );

      rethrow; // Rethrow the exception to handle it in the UI layer
    } catch (e) {
      Get.snackbar('Login Error', e.toString(), backgroundColor: Colors.red);
      rethrow; // Rethrow the exception to handle it in the UI layer
    }
  }*/

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = LoginWithEmailAndPasswordFailure.code(e.code);
      Get.snackbar('Login Error', ex.message, backgroundColor: Colors.red);
      throw ex;
    } catch (e) {
      final ex = LoginWithEmailAndPasswordFailure();
      Get.snackbar('Login Error', ex.message, backgroundColor: Colors.red);
      throw ex;
    }
  }

  Future<void> logOut() async {
    await _auth.signOut();
  }
}
