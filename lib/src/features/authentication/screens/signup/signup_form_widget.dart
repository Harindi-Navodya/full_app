import 'package:flutter/material.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:full_app/src/features/authentication/controller/signup_controller.dart';
import 'package:get/get.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: InputDecoration(
                label: Text("Full Name"),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                label: Text("Email"),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controller.phoneNo,
              decoration: InputDecoration(
                label: Text("Phone No"),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                label: Text("Password"),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    SignUpController.instance.registerUser(
                        controller.email.text.trim(),
                        controller.password.text.trim());
                  }
                },
                child: Text(tSignup.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
