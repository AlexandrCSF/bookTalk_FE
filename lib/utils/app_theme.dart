import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {

  static ColorScheme colorScheme() {
    return ColorScheme.fromSeed(
      seedColor: const Color(0xFF904B3C),
      primary: const Color(0xFF904B3C),
      onPrimary: const Color(0xFFFFFFFF),
      background: const Color(0xFFFFF8F6),
      onBackground: const Color(0xFF231917),
      surface: const Color(0xFFFFF8F6),
      onSurface: const Color(0xFF231917),
      outline: const Color(0xFF85736F),
      outlineVariant: const Color(0xFFD8C2BD),
      inversePrimary: const Color(0xFFFFDAD3),
      //primary fixed
      onInverseSurface: const Color(0xFFFFEDE9),
      error: const Color(0xFFBA1A1A),
      onError: const Color(0xFFFFFFFF),
      brightness: Brightness.light,
    );
  }

  static TextTheme textTheme() {
    return TextTheme(
      titleLarge: GoogleFonts.inter(
        fontSize: 32,
        fontWeight: FontWeight.w900,
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        height: 1.2,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      labelMedium: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        height: 1,
      ),
    );
  }

}