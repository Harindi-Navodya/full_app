import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:full_app/src/features/authentication/screens/dashboard/dashboard_page.dart';
import 'package:full_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:full_app/src/repository/authentication_repository/exception/login_email_password_failure.dart';

class GetLoginController extends GetxController {
  static GetLoginController get instance => Get.find();

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final RxBool isPasswordVisible = true.obs;
  final RxBool isLoading = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void loginUser() {
    try {
      final String userEmail = email.text.trim();
      final String userPassword = password.text.trim();

      // Check if email and password are empty
      if (userEmail.isEmpty || userPassword.isEmpty) {
        Get.snackbar('Error', 'Please enter both email and password');
        return;
      }

      isLoading.value = true;

      // Call the loginWithEmailAndPassword method from AuthenticationRepository
      AuthenticationRepository.instance
          .loginWithEmailAndPassword(userEmail, userPassword);

      // If login is successful, navigate to the dashboard
      Get.offAll(() => Dashboard());
    } on LoginWithEmailAndPasswordFailure catch (e) {
      // Handle specific login failures, such as invalid credentials
      print('Login failed: ${e.message}');
      // Show error message to the user
      Get.snackbar(
          'Login Failed', e.message ?? 'An error occurred during login');
    } catch (e) {
      // Handle other exceptions
      print('An unexpected error occurred: $e');
      // Show a generic error message to the user
      Get.snackbar('Error', 'An unexpected error occurred during login');
    } finally {
      isLoading.value = false;
      // Clear text fields after login attempt
      email.clear();
      password.clear();
    }
  }
}
