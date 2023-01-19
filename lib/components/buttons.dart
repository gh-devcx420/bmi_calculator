import 'package:bmi/components/constants_variables.dart';
import 'package:flutter/material.dart';

//Bottom buttons with a circular border shape used for calculate & reset buttons:
class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.onButtonTap,
    required this.buttonLabel,
    required this.buttonHeight,
  });

  final Function() onButtonTap;
  final String buttonLabel;
  final double buttonHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        height: buttonHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kAppButtonBackgroundColour,
          borderRadius: BorderRadius.circular(
            kBorderRadius.toDouble(),
          ),
        ),
        child: Center(
          child: Text(
            buttonLabel,
            style: vIconLabelTextStyle.copyWith(
              color: kAppButtonLabelTextColour,
            ),
          ),
        ),
      ),
    );
  }
}

//Radio buttons used for selection preferred height and weight unit buttons:
class RadioButtonRow extends StatelessWidget {
  const RadioButtonRow({
    super.key,
    required this.onChangedR1,
    required this.onChangedR2,
    required this.groupValue1,
    required this.groupValue2,
    required this.radioButton1Label,
    required this.radioButton2Label,
    required this.selectHeightRadioButtonRowLabelHeading,
  });

  final Function(dynamic) onChangedR1;
  final Function(dynamic) onChangedR2;
  final String radioButton1Label;
  final String radioButton2Label;
  final int groupValue1;
  final int groupValue2;
  final String selectHeightRadioButtonRowLabelHeading;

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          selectHeightRadioButtonRowLabelHeading,
          style: vAppBarTitleTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              activeColor: kRadioButtonIconColour,
              value: 1,
              groupValue: groupValue1,
              onChanged: onChangedR1,
            ),
            Text(radioButton1Label),
            Radio(
              activeColor: kRadioButtonIconColour,
              value: 2,
              groupValue: groupValue2,
              onChanged: onChangedR2,
            ),
            Text(radioButton2Label),
          ],
        ),
      ],
    );
  }
}
