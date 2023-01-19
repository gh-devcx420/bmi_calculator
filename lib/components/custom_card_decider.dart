import 'package:bmi/components/custom_card.dart';
import 'package:flutter/material.dart';
import 'constants_variables.dart';


//HeightCardDecider returns a CustomCardWidget based on which radio button(Height unit) got selected in the BMI_Homescreen.
class HeightCardDecider extends StatefulWidget {
  const HeightCardDecider({Key? key}) : super(key: key);

  @override
  State<HeightCardDecider> createState() => _HeightCardDeciderState();
}

class _HeightCardDeciderState extends State<HeightCardDecider> {
  @override
  Widget build(BuildContext context) {
    if (selectedHeightPreference == HeightPreference.centimeters) {
      return CustomCard(
        sliderOnChanged: (double v) {
          setState(() {
            humanHeightInCms = v.toInt();
          });
        },
        cardLabel: 'Height',
        hwValue: humanHeightInCms.toInt(),
        siUnit: 'cm',
        sliderMin: 0,
        sliderMax: 220,
        divisions: 220,//Provide divisions for smoothness in slider because of larger range.
      );
    } else {
      //return CustomCardForFeetInchInput();
      return CustomCardForFeetInchInput(
        feetSliderOnChanged: (double v) {
          setState(() {
            humanHeightInFeet = v.toInt();
          });
        },
        inchSliderOnChanged: (double v) {
          setState(() {
            humanHeightInInch = v.toInt();
          });
        },
        cardLabel: 'Height',
        feetValue: humanHeightInFeet.toInt(),
        inchValue: humanHeightInInch.toInt(),
        siUnit: 'Ft',
        siUnitSub: 'In',
        sliderMin: 0,
        feetSliderMax: 8,
        inchSliderMax: 11,
        //No need of divisions because the range is small.
      );
    }
  }
}

//WeightCardDecider returns a CustomCardWidget based on which radio button(Weight unit) got selected in the BMI_Homescreen.
class WeightCardDecider extends StatefulWidget {
  const WeightCardDecider({Key? key}) : super(key: key);

  @override
  State<WeightCardDecider> createState() => _WeightCardDeciderState();
}

class _WeightCardDeciderState extends State<WeightCardDecider> {
  @override
  Widget build(BuildContext context) {
    if (selectedWeightPreference == WeightPreference.kilograms) {
      return CustomCard(
        sliderOnChanged: (double v) {
          setState(() {
            humanWeightInKgs = v.toInt();
          });
        },
        cardLabel: 'Weight',
        hwValue: humanWeightInKgs.toInt(),
        siUnit: 'kg',
        sliderMin: 0,
        sliderMax: 200,
        divisions: 200, //Provide divisions for smoothness in slider because of larger range.
      );
    } else {
      return CustomCard(
        sliderOnChanged: (double v) {
          setState(() {
            humanWeightInPounds = v.toInt();
          });
        },
        cardLabel: 'Weight',
        hwValue: humanWeightInPounds.toInt(),
        siUnit: 'lb',
        sliderMin: 0,
        sliderMax: 440,
        divisions: 440,//Provide divisions for smoothness in slider because of larger range.
      );
    }
  }
}
