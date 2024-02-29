import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      border: const OutlineInputBorder(),
      prefixIconColor: Colors.grey[800],
      floatingLabelStyle: TextStyle(color: Colors.grey[800]),
      focusedBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(width: 2, color: Color.fromARGB(255, 79, 79, 79)),
      ));

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: Color.fromARGB(255, 255, 234, 0),
          floatingLabelStyle:
              TextStyle(color: Color.fromARGB(255, 255, 234, 0)),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 2, color: Color.fromARGB(255, 255, 234, 0)),
          ));
}
