import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/constants.dart';
import 'core/theme/text_theme_data.dart';
import 'pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfólio',
      theme: ThemeData(
        primaryColor: ColorsConstants.primary,
        useMaterial3: false,
        textTheme: textThemeData,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: ColorsConstants.secondary,
            textStyle: GoogleFonts.oxanium(
              textStyle: TextStyle(
                color: ColorsConstants.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
