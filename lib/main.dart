import 'package:flutter/material.dart';
import 'package:bmi/screens/bmi_homescreen.dart';
import 'package:bmi/constants_variables.dart';

void main() {
  runApp(
    const BMICalculator(),
  );
}

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: kAppPrimaryColour,
        ),
        sliderTheme: const SliderThemeData(
          activeTrackColor: kSliderActiveTrackColor,
          inactiveTrackColor: kSliderInActiveTrackColor,
          thumbColor: kSliderThumbColour,
          overlayColor: kSliderThumbOverlayColour,
        ),
      ),
      home: const BMIHomeScreen(),
    );
  }
}
