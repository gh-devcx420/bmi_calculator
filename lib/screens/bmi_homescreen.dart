import 'package:flutter/material.dart';
import 'package:bmi/components/buttons.dart';
import 'package:bmi/screens/bmi_inputscreen.dart';
import 'package:bmi/components/constants_variables.dart';

class BMIHomescreen extends StatefulWidget {
  const BMIHomescreen({Key? key}) : super(key: key);

  @override
  State<BMIHomescreen> createState() => _BMIHomescreenState();
}

class _BMIHomescreenState extends State<BMIHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'BMI CALCULATOR',
          style: vAppBarTitleTextStyle,
        ),
      ),
      backgroundColor: kAppPrimaryColour,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What is Body Mass Index ?',
              style: vAppBarTitleTextStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: kAppBarTextLabelColour,
                  width: 1.8,
                ),
              ),
              child: Image.asset('lib/assets/BMI.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Body mass index (BMI) is a measure of body fat based on height and weight values of an individual that applies to most adult men and women.',
              style: vBodyTextStyle,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  kBorderRadius.toDouble(),
                ),
                color: kAppSecondaryColour,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: RadioButtonRow(
                  selectHeightRadioButtonRowLabelHeading:
                      'Select your preferred Height unit ',
                  radioButton1Label: 'Centimeters',
                  onChangedR1: (value) {
                    setState(() {
                      selectedHeightValue = value;
                      selectedHeightPreference = HeightPreference.centimeters;
                    });
                  },
                  groupValue1: selectedHeightValue,
                  radioButton2Label: 'Feet & Inches',
                  onChangedR2: (value) {
                    setState(() {
                      selectedHeightValue = value;
                      selectedHeightPreference = HeightPreference.feetInches;
                    });
                  },
                  groupValue2: selectedHeightValue,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  kBorderRadius.toDouble(),
                ),
                color: kAppSecondaryColour,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: RadioButtonRow(
                  selectHeightRadioButtonRowLabelHeading:
                      'Select your preferred Weight unit',
                  radioButton1Label: 'Kilograms',
                  onChangedR1: (value) {
                    setState(() {
                      selectedWeightValue = value;
                      selectedWeightPreference = WeightPreference.kilograms;
                    });
                  },
                  groupValue1: selectedWeightValue,
                  radioButton2Label: 'Pounds',
                  onChangedR2: (value) {
                    setState(() {
                      selectedWeightValue = value;
                      selectedWeightPreference = WeightPreference.pounds;
                    });
                  },
                  groupValue2: selectedWeightValue,
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(
                height: double.infinity,
              ),
            ),
            BottomButton(
              buttonLabel: 'Go to Calculate page',
              buttonHeight: 60,
              onButtonTap: () {
                if ((selectedHeightPreference == HeightPreference.centimeters ||
                        selectedHeightPreference ==
                            HeightPreference.feetInches) &&
                    (selectedWeightPreference == WeightPreference.kilograms ||
                        selectedWeightPreference == WeightPreference.pounds)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BMIInputScreen(),
                    ),
                  );
                }
                setState(() {
                  resetBMIInputs();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
