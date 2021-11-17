import 'package:countries/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    
    elevation: 0.0,
    centerTitle: true,
    titleTextStyle: AppTextStyle.mainTitle,
  ),
  textTheme: GoogleFonts.comfortaaTextTheme(),
);
