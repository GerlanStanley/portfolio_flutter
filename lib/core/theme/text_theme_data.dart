import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

final textThemeData = TextTheme(
  displayLarge: GoogleFonts.oxanium(
    textStyle: TextStyle(
      fontSize: 32,
      color: ColorsConstants.textPrimary,
      fontWeight: FontWeight.w700,
    ),
  ),
  displayMedium: GoogleFonts.oxanium(
    textStyle: TextStyle(
      fontSize: 20,
      color: ColorsConstants.textSecondary,
      fontWeight: FontWeight.w500,
    ),
  ),
  displaySmall: GoogleFonts.oxanium(),
  headlineLarge: GoogleFonts.oxanium(
    textStyle: const TextStyle(
      fontSize: 24,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    ),
  ),
  headlineMedium: GoogleFonts.oxanium(
    textStyle: const TextStyle(
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      height: 1.8,
    ),
  ),
  headlineSmall: GoogleFonts.oxanium(
    textStyle: const TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),
  ),
  titleLarge: GoogleFonts.oxanium(
    textStyle: TextStyle(
      fontSize: 20,
      color: ColorsConstants.textPrimary,
      fontWeight: FontWeight.w700,
    ),
  ),
  titleMedium: GoogleFonts.oxanium(
    textStyle: TextStyle(
      fontSize: 16,
      color: ColorsConstants.textSecondary,
      fontWeight: FontWeight.w700,
      height: 1.8,
    ),
  ),
  titleSmall: GoogleFonts.oxanium(
    textStyle: TextStyle(
      fontSize: 14,
      color: ColorsConstants.textPrimary,
      fontWeight: FontWeight.w600,
    ),
  ),
  bodyLarge: GoogleFonts.oxanium(
    textStyle: TextStyle(
      fontSize: 16,
      color: ColorsConstants.textSecondary,
      fontWeight: FontWeight.w400,
      height: 1.8,
    ),
  ),
  bodyMedium: GoogleFonts.oxanium(
    textStyle: TextStyle(
      fontSize: 14,
      color: ColorsConstants.textPrimary,
      fontWeight: FontWeight.w400,
    ),
  ),
  bodySmall: GoogleFonts.oxanium(
    textStyle: TextStyle(
      fontSize: 12,
      color: ColorsConstants.textPrimary,
      fontWeight: FontWeight.w400,
    ),
  ),
  labelLarge: GoogleFonts.oxanium(
    textStyle: TextStyle(
      fontSize: 14,
      color: ColorsConstants.textPrimary,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
    ),
  ),
  labelMedium: GoogleFonts.oxanium(
    textStyle: TextStyle(
      fontSize: 14,
      color: ColorsConstants.textPrimary,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
    ),
  ),
  labelSmall: GoogleFonts.oxanium(
    textStyle: TextStyle(
      fontSize: 12,
      color: ColorsConstants.textPrimary,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
  ),
);
