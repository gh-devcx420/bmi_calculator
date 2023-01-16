import 'dart:math';
import 'package:bmi/constants_variables.dart';
import 'package:flutter/material.dart';

class Results {
  int humanHeight;
  int humanWeight;
  double result = 0;
  Color resultIconColour = kAppIconsColour;
  Color resultTextColour = kAppIconsColour;

  Results(this.humanHeight, this.humanWeight);

  double getResultValue() {
    //Calculate the BMI result.
    result = humanWeight / pow(humanHeight / 100, 2);
    return result;
  }

  String getInference() {
    //Calculate the Inference based on above result.
    if(result >= 40){
      return 'Obese Class 3';
    }
    else if(result >= 35){
      return 'Obese Class 2';
    }
    else if(result >= 30){
      return 'Obese Class 1';
    }
    else if(result >= 25){
      return 'Overweight';
    }
    else if(result >= 18.5){
      return 'Normal';
    }
    else if(result >= 17){
      return 'Mild Thinness';
    }
    else if(result >= 16){
      return 'Moderate Thinness';
    }
    else {
      return 'Severe Thinness';
    }
  }

  String getTip() {
    //Calculate the Tip based on above result.
    if(result >= 25){
      return 'More exercise & controlled diet is good for you';
    }
    else if(result >= 18.5){
      return 'Good BMI Score. Doesn\'t hurt to exercise though!';
    }
    else {
      return 'Moderate to low exercise & increased food intake is good for you!';
    }
  }

  Color getResultTextColour () {
    //Assign the result text colour based on above result.
    if(result >= 25){
      return resultIconColour = Colors.red;
    }
    else if(result >= 18.5){
      return resultIconColour = Colors.green;
    }
    else {
      return resultIconColour = Colors.orange;
    }
  }

  Color getResultIconColour () {
    //Assign the result icon based on above result.
    //result = humanWeight / pow(humanHeight / 100, 2);
    if(result >= 25){
      return resultTextColour = Colors.redAccent;
    }
    else if(result >= 18.5){
      return resultTextColour = Colors.lightGreenAccent;
    }
    else {
      return resultTextColour = Colors.orangeAccent;
    }
  }
}
