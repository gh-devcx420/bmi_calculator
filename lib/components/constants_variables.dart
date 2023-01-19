import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Constants are here -
//Value constants used in my app
const double kBorderRadius = 35;

//Style constants
//Main Scaffold colors:
const Color kAppPrimaryColour = Color(0xFF0C0C20);
const Color kAppSecondaryColour = Color(0x15ABABED);
//App icon & icon text label colours:
const Color kAppBarTextLabelColour = Color(0xFFCE8DFD);
const Color kAppBarLeadingIconColour = Color(0xFFCE8DFD);
const Color kAppIconsColour = Color(0xDADCB0FF);
const Color kIconLabelColour = Color(0xDADCB0FF);
//App button labels:
const Color kAppButtonLabelTextColour = Color(0xDADCB0FF);
const Color kAppButtonBackgroundColour = Color(0x15ABABED);
//App slider button colours:
const Color kSliderThumbColour = Color(0xFFDCB0FF);
const Color kSliderThumbOverlayColour = Color(0x4DDCB0FF);
const Color kSliderActiveTrackColor = Color(0xDADCB0FF);
const Color kSliderInActiveTrackColor = Color(0x4DDCB0FF);
//Radio buttons;
const Color kRadioButtonIconColour = Color(0xDADCB0FF);
const Color kRadioButtonIconSplashColour = Color(0x4DDCB0FF);
//TextStyle constants:
const kIconStyle = TextStyle(
  color: kAppIconsColour,
  fontSize: 45,
  fontWeight: FontWeight.w900,
);

//***********************************************************

//Variables Are here-
//Values variables

int humanHeightInCms = 0;
int humanHeightInFeet = 0;
int humanHeightInInch = 0;
int humanWeightInKgs = 0;
int humanWeightInPounds = 0;

enum HeightPreference {
  feetInches,
  centimeters,
  none,
}

enum WeightPreference {
  kilograms,
  pounds,
  none,
}

HeightPreference selectedHeightPreference = HeightPreference.none;
WeightPreference selectedWeightPreference = WeightPreference.none;
int selectedHeightValue = 0;
int selectedWeightValue = 0;
String result = '';
String inference = '';
String tip = '';

//Style variables
var vResultIconColour = kAppIconsColour;
var vResultTextColour = kAppIconsColour;
//TextStyle variables
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
var vBodyTextStyle = GoogleFonts.ptSans(
  color: kAppBarTextLabelColour,
  fontSize: 16,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.7,
);

//Global functions
void resetBMIInputs() {
  humanHeightInCms = 0;
  humanWeightInKgs = 0;
  humanHeightInFeet = 0;
  humanHeightInInch = 0;
  humanWeightInPounds = 0;
  result = '';
  inference = '';
  tip = '';
}
