import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  // ===== BRAND / HEADINGS =====
  static TextStyle brand = GoogleFonts.playfairDisplay(
    fontSize: 28,
    fontWeight: FontWeight.w700,
  );

  static TextStyle heading1 = GoogleFonts.playfairDisplay(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle heading2 = GoogleFonts.playfairDisplay(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  // ===== BODY TEXT =====
  static TextStyle body = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyBold = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  // ===== PRICE / SPECIAL =====
  static TextStyle price = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  // ===== BUTTON TEXT =====
  // Theme-safe: color will come from ElevatedButtonTheme or copyWith
  static TextStyle button = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
