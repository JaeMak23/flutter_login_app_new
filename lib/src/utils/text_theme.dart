import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme{
  static TextTheme lightTextTheme=TextTheme(
      displayMedium: GoogleFonts.montserrat(
        color: Colors.black87,
      ),
      titleSmall: GoogleFonts.montserrat(
        color: Colors.deepPurple,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  static TextTheme darkTextTheme = TextTheme(
      displayMedium: GoogleFonts.montserrat(
        color: Colors.white70,
      ),
      titleSmall: GoogleFonts.montserrat(
        color: Colors.white60,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
}