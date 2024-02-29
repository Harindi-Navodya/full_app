import 'package:flutter/material.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonThem = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        side: BorderSide(
          color: Colors.black,
        ),
        padding: EdgeInsets.symmetric(vertical: 15)),
  );

  static final darkOutlinedButtonThem = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        side: BorderSide(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        padding: EdgeInsets.symmetric(vertical: 15)),
  );
}
