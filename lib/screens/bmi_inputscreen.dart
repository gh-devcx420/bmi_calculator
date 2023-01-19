import 'package:bmi/components/buttons.dart';
import 'package:bmi/components/custom_card_decider.dart';
import 'package:flutter/material.dart';
import 'package:bmi/components/result_calculation.dart';
import 'package:bmi/components/constants_variables.dart';

class BMIInputScreen extends StatefulWidget {
  const BMIInputScreen({Key? key}) : super(key: key);

  @override
  State<BMIInputScreen> createState() => _BMIInputScreenState();
}

class _BMIInputScreenState extends State<BMIInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'BMI CALCULATOR',
          style: vAppBarTitleTextStyle,
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: kAppPrimaryColour,
      body: Column(
        children: [
          Expanded(
            //Card widget or Space for displaying the final calculated result values, inferences, and healthy tip.
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
                          textAlign: TextAlign.center,
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
          // ignore: prefer_const_constructors
          HeightCardDecider(),
          // ignore: prefer_const_constructors
          WeightCardDecider(),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  //Reset Button.
                  flex: 2,
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          resetBMIInputs();
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: BottomButton(
                          buttonHeight: 60,
                          buttonLabel: 'Reset',
                          onButtonTap: () {
                            setState(() {
                              resetBMIInputs();
                            });
                          },
                        ),
                      )),
                ),
                Expanded(
                  //Calculate Button.
                  flex: 4,
                  child: BottomButton(
                    buttonHeight: 60,
                    buttonLabel: 'Calculate',
                    onButtonTap: () {
                      Results myResult = Results(
                          humanHeightInCms,
                          humanHeightInFeet,
                          humanHeightInInch,
                          humanWeightInKgs,
                          humanWeightInPounds);
                      myResult.convertHeight();
                      myResult.convertWeight();
                      setState(() {
                        result = myResult.getResultValue().toStringAsFixed(2);
                        vResultIconColour = myResult.getResultIconColour();
                        vResultTextColour = myResult.getResultTextColour();
                        inference = myResult.getInference();
                        tip = myResult.getTip();
                      });
                    },
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
