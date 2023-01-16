import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



//Constants are here -
//Global constant values used in my app
const int kBorderRadius = 35;

//Main Scaffold colors:
const Color kAppPrimaryColour = Color(0xFF0C0C20);
const Color kAppSecondaryColour = Color(0x15ABABED);

//App icon & icon text label colours:
const Color kAppBarTextLabelColour = Color(0xFFCE8DFD);
const Color kAppIconsColour = Color(0xDADCB0FF);
const Color kIconLabelColour = Color(0xDADCB0FF);

//App button labels:
const Color kAppButtonLabelTextColour = Color(0xDADCB0FF);
const Color kAppButtonBackgroundColour = Color(0x15ABABED);

//App slider button colours:
const Color kSliderThumbColour = Color(0xDADCB0FF);
const Color kSliderThumbOverlayColour = Color(0x4DDCB0FF);
const Color kSliderActiveTrackColor = Color(0xDADCB0FF);
const Color kSliderInActiveTrackColor = Color(0x4DDCB0FF);

// Styling constants:
const kIconStyle = TextStyle(
  color: kAppIconsColour,
  fontSize: 45,
  fontWeight: FontWeight.w900,
);



//Variables Are here:
//global variable values used in my app
int humanHeight = 0;
int humanWeight = 0;
var vResultIconColour = kAppIconsColour;
var vResultTextColour = kAppIconsColour;

//Style variables
var vAppBarTitleTextStyle = GoogleFonts.ptSans(
  color: kAppBarTextLabelColour,
  fontSize: 20,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.7,
);

var vIconLabelTextStyle = GoogleFonts.ptSans(
  color: kIconLabelColour,
  fontSize: 20,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.7,
);
