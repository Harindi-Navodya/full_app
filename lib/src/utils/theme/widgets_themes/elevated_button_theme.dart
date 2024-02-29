import 'package:flutter/material.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonThem = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        side: BorderSide(
          color: Colors.black,
        ),
        padding: EdgeInsets.symmetric(vertical: 15)),
  );

  static final darkElevatedButtonThem = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        side: BorderSide(
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        padding: EdgeInsets.symmetric(vertical: 15)),
  );
}
