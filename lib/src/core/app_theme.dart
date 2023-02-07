import 'package:faramove/src/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextStyle headlineOne = GoogleFonts.mulish(
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.primaryColor,
    fontSize: 24,
    height: 1.4,
  );
  static TextStyle headlineTwo = GoogleFonts.mulish(
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    color: AppColors.primaryColor,
    fontSize: 20,
  );

  static TextStyle headlineThree = GoogleFonts.mulish(
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.primaryColor,
    fontSize: 16,
    height: 1.4,
  );

  static TextStyle bodyOne = GoogleFonts.mulish(
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    color: AppColors.primaryColor,
    fontSize: 14,
    height: 1.4,
  );
  static TextStyle bodyTwo = GoogleFonts.mulish(
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.primaryColor,
    fontSize: 12.51,
  );

  /// Home texts
  static TextStyle subtitle1 = GoogleFonts.mulish(
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
    fontSize: 12,
  );
  static TextStyle subtitle2 = GoogleFonts.mulish(
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
    fontSize: 12,
  );

  static TextStyle subtitle3 = GoogleFonts.mulish(
    fontWeight: FontWeight.w400,
    color: AppColors.primaryColor,
    fontSize: 12,
  );

  static ThemeData get theme {
    return ThemeData(
        primaryColor: Colors.blueGrey,
        primaryColorLight: const Color(0xFF871313),
        primaryColorDark: const Color(0xFF530404),
        highlightColor: const Color(0xFFF9EDEC),
        cardColor: const Color(0xFFC667CE),
        disabledColor: const Color(0xFFD0D0D0),
        // canvasColor: const Color(0xFFF6F6F6),
        colorScheme: const ColorScheme(
          primary: Color(0xFFEFA83C),
          secondary: Color(0xFF0F96C5),
          surface: Color(0xFFE1E1E1),
          surfaceVariant: Color(0xFFD0D0D0),
          background: Colors.white,
          error: Color(0xFFAC0B0B),
          onPrimary: Colors.black,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        textTheme: GoogleFonts.nunitoTextTheme(
          const TextTheme(
            headline1: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 68,
              height: 72,
              fontStyle: FontStyle.normal,
            ),
            headline2: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 42,
              fontWeight: FontWeight.w300,
            ),
            headline3: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.normal,
            ),
            headline4: TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 16,
            ),
            headline5: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 20,
            ),
            headline6: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        ));
  }
}
