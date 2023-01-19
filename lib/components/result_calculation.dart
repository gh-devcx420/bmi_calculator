import 'package:flutter/material.dart';
import 'package:bmi/components/constants_variables.dart';
import 'dart:math';

class Results {
  int humanHeightInCms;
  int humanHeightInFeet;
  int humanHeightInInch;
  int humanWeightInKgs;
  int humanWeightInPounds;
  double result = 0;
  Color resultIconColour = kAppIconsColour;
  Color resultTextColour = kAppIconsColour;
  double convertedWeight = 0.0;
  double convertedHeight = 0.0;

  Results(this.humanHeightInCms, this.humanHeightInFeet, this.humanHeightInInch,
      this.humanWeightInKgs, this.humanWeightInPounds);

  void convertHeight() {
    if (selectedHeightPreference == HeightPreference.feetInches) {
      convertedHeight =
          (humanHeightInFeet * 30.48) + (humanHeightInInch * 2.54);
    } else {
      convertedHeight = humanHeightInCms.toDouble();
    }
  }

  void convertWeight() {
    if (selectedWeightPreference == WeightPreference.pounds) {
      convertedWeight = (humanWeightInPounds * 0.45359237);
    } else {
      convertedWeight = humanWeightInKgs.toDouble();
    }
  }

  double getResultValue() {
    //Calculate the BMI result.
    result = convertedWeight / pow(convertedHeight / 100, 2);
    if (convertedHeight != 0 &&
        convertedWeight != 0 &&
        result > 13.5 &&
        result < 110) {
      return result;
    } else {
      return 0;
    }
  }

  String getInference() {
    //Calculate the Inference based on above result.
    if (convertedHeight == 0 ||
        convertedWeight == 0 ||
        result < 13.5 ||
        result > 110) {
      return 'Error! Check the selected Values';
    } else if (result >= 40 && result < 110) {
      return 'Obese Class 3';
    } else if (result >= 35) {
      return 'Obese Class 2';
    } else if (result >= 30) {
      return 'Obese Class 1';
    } else if (result >= 25) {
      return 'Overweight';
    } else if (result >= 18.5) {
      return 'Normal';
    } else if (result >= 17) {
      return 'Mild Thinness';
    } else if (result >= 16) {
      return 'Moderate Thinness';
    } else {
      return 'Severe Thinness';
    }
  }

  String getTip() {
    //Calculate the Tip based on above result.
    if (convertedHeight == 0 ||
        convertedWeight == 0 ||
        result < 13.5 ||
        result > 110) {
      return '';
    } else if (result >= 25) {
      return 'More exercise & controlled diet is good for you';
    } else if (result >= 18.5) {
      return 'Good BMI Score. Doesn\'t hurt to exercise though!';
    } else {
      return 'Moderate to low exercise & increased food intake is good for you!';
    }
  }

  Color getResultTextColour() {
    //Assign the result text colour based on above result.
    if (convertedHeight == 0 ||
        convertedWeight == 0 ||
        result < 13.5 ||
        result > 110) {
      return resultIconColour = Colors.red;
    } else if (result >= 25 && result <= 110) {
      return resultIconColour = Colors.red;
    } else if (result >= 18.5) {
      return resultIconColour = Colors.green;
    } else {
      return resultIconColour = Colors.orange;
    }
  }

  Color getResultIconColour() {
    //Assign the result icon based on above result.
    if (convertedHeight == 0 ||
        convertedWeight == 0 ||
        result < 13.5 ||
        result > 110) {
      return resultTextColour = Colors.red;
    } else if (result >= 25) {
      return resultTextColour = Colors.redAccent;
    } else if (result >= 18.5) {
      return resultTextColour = Colors.lightGreenAccent;
    } else {
      return resultTextColour = Colors.orangeAccent;
    }
  }
}
