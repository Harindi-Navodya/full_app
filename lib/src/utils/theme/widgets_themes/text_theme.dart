import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      headlineMedium: GoogleFonts.montserrat(color: Colors.black),
      headlineSmall: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 24,
      ));
  static TextTheme darkTextTheme = TextTheme(
      headlineMedium: GoogleFonts.montserrat(
        color: Colors.white,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 24,
      ));
}
