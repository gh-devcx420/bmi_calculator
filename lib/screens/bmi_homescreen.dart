import 'package:bmi/components/result_calculation.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constants_variables.dart';
import 'package:bmi/components/custom_card.dart';

String result = '';
String inference = '';
String tip = '';

class BMIHomeScreen extends StatefulWidget {
  const BMIHomeScreen({Key? key}) : super(key: key);

  @override
  State<BMIHomeScreen> createState() => _BMIHomeScreenState();
}

class _BMIHomeScreenState extends State<BMIHomeScreen> {
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
      body: Column(
        children: [
          Expanded(
            //Widget or Space for displaying the final calculated result values, inferences, and healthy tip.
            flex: 4,
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  kBorderRadius.toDouble(),
                ),
                color: kAppSecondaryColour,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Text(
                          'Result will display here:',
                          style: vIconLabelTextStyle,
                        ),
                      ),
                      Center(
                        child: Text(
                          result,
                          style: kIconStyle.copyWith(
                            color: vResultIconColour,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          inference,
                          style: vIconLabelTextStyle.copyWith(
                            color: vResultTextColour,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          tip,
                          style: vIconLabelTextStyle.copyWith(
                            color: vResultTextColour,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            //Widget for displaying the height values.
            flex: 3,
            child: CustomCard(
              sliderOnChanged: (double v) {
                setState(() {
                  humanHeight = v.toInt();
                });
              },
              cardLabel: 'Height',
              hwValue: humanHeight,
              siUnit: 'cm',
              sliderMin: 0,
              sliderMax: 220,
              divisions: 220,

            ),
          ),
          Expanded(
            //Widget for displaying weight values.
            flex: 3,
            child: CustomCard(
              sliderOnChanged: (double v) {
                setState(() {
                  humanWeight = v.toInt();
                });
              },
              cardLabel: 'Weight',
              hwValue: humanWeight,
              siUnit: 'kg',
              sliderMin: 0,
              sliderMax: 150,
              divisions: 150,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  //Calculate Button.
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Results myResult = Results(humanHeight, humanWeight);
                      setState(() {
                        result = myResult.getResultValue().toStringAsFixed(2);
                        vResultIconColour = myResult.getResultIconColour();
                        vResultTextColour = myResult.getResultTextColour();
                        inference = myResult.getInference();
                        tip = myResult.getTip();
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: kAppButtonBackgroundColour,
                        borderRadius: BorderRadius.circular(
                          kBorderRadius.toDouble(),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'CALCULATE',
                          style: vIconLabelTextStyle.copyWith(
                            color: kAppButtonLabelTextColour,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
