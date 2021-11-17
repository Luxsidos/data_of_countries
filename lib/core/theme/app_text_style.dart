import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  AppTextStyle._();

  static final mainTitle = GoogleFonts.comfortaa(
    color: Colors.white,
    fontSize: 26.0,
    fontWeight: FontWeight.w700,
  );

  static final subTitles = GoogleFonts.comfortaa(
    color: const Color(0xFFFFFFFF).withOpacity(0.7),
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
  );

  static final title = GoogleFonts.comfortaa(
    color: const Color(0xFFFFFFFF),
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  );

  static final recommended = GoogleFonts.comfortaa(
    color: const Color(0xFF000033).withOpacity(0.4),
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  );

  static final countryName = GoogleFonts.comfortaa(
    color: const Color(0xFFFFFFFF),
    fontSize: 26.0,
    fontWeight: FontWeight.w600,
  );

  
}
