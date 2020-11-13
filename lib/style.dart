import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColors {
  static const white = Color(0xFFF2EEE0);
  static const green = Color(0xFF63A088);
  static const red = Color(0xFFCD5967);
  static const lightGrey = Color(0xFF364558);
  static const darkGrey = Color(0xFF2D3540);
}

class MyStyles {
  static final double elevation = 8.0;

  // Team names on game card
  static final TextStyle h1 = GoogleFonts.nunito(
    color: MyColors.white,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );

  // Team names on game card
  static final TextStyle awayTeam = GoogleFonts.nunito(
    color: MyColors.white,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );

  // Team names on game card
  static final TextStyle homeTeam = GoogleFonts.nunito(
    color: MyColors.green,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );

  // Game card title
  static final TextStyle h2 = GoogleFonts.nunito(
    color: MyColors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  );

  // Bet type dividers
  static final TextStyle h3 = GoogleFonts.nunito(
    color: MyColors.white,
    fontSize: 14.0,
    fontWeight: FontWeight.w700,
  );

  // Game time
  static final TextStyle h4 = GoogleFonts.nunito(
    color: MyColors.white,
    fontSize: 12.0,
    fontWeight: FontWeight.w300,
  );

  // Bet button
  static final TextStyle betBtnText = GoogleFonts.nunito(
    fontSize: 20.0,
    fontWeight: FontWeight.normal,
    color: MyColors.white,
  );

  // For bet button selected
  static final TextStyle betBtnTextSelected = GoogleFonts.nunito(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
    color: MyColors.darkGrey,
  );
}
