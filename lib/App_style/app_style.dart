import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

//App Images
const String image1 = "assets/images/image1.png";
const String profile = "assets/images/profile.png";
const String image3 = "assets/images/image3.png";

//Spp icon

const String plusIcon = "assets/icons/plusIcon.png";
const String SearchIcon = "assets/icons/searchIcon.png";
const String filterIcon = "assets/icons/filterIcon.png";

//App cplors

const Color kbottonColor = Color(0xffc67c4e);
const Color kwhiteColor = Colors.white;
const Color kblackColor = Colors.black;
const Color kTextColor = Color(0xff2F2D2C);

//gradien Color

List<Color> gradienColors = [
  const Color(0xFF131313),
  const Color(0xFF313131),
];

//app theme data
ThemeData? theme = ThemeData(
  scaffoldBackgroundColor: Color(0xfff9f9f9),
  textTheme: GoogleFonts.soraTextTheme()
      .apply(bodyColor: kTextColor, displayColor: kwhiteColor),
);
