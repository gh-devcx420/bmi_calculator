import 'package:flutter/material.dart';
import 'package:bmi/components/constants_variables.dart';

//Custom card widget used to build height values for card having 2 sliders(height in feet and inches)
class CustomCardForFeetInchInput extends StatelessWidget {
  const CustomCardForFeetInchInput({
    super.key,
    required this.feetSliderOnChanged,
    required this.inchSliderOnChanged,
    required this.cardLabel,
    required this.feetValue,
    required this.inchValue,
    required this.siUnit,
    required this.siUnitSub,
    required this.sliderMin,
    required this.feetSliderMax,
    required this.inchSliderMax,
  });

  final Function(double)
      feetSliderOnChanged; //Function of this card's feet slider.
  final Function(double)
      inchSliderOnChanged; //Function of this card's inch slider.
  final String cardLabel; //Display name/Label for the card widget.
  final int feetValue; //Height feet value.
  final int inchValue; //Height inch value.
  final String siUnit; //SI unit i.e feet.
  final String siUnitSub; //SI unit i.e inches.
  final int
      sliderMin; //The minimum value of both of the sliders(minimum is common).
  final int feetSliderMax; //The maximum value of the feet slider.
  final int inchSliderMax; //The maximum value of the inch slider.

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          kBorderRadius.toDouble(),
        ),
        color: kAppSecondaryColour,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            cardLabel,
            style: vIconLabelTextStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                feetValue.toString(),
                style: kIconStyle,
              ),
              Text(
                siUnit.toString(),
                style: vIconLabelTextStyle,
              ),
              Text(
                inchValue.toString(),
                style: kIconStyle,
              ),
              Text(
                siUnitSub.toString(),
                style: vIconLabelTextStyle,
              ),
            ],
          ),
          Slider(
            min: sliderMin.toDouble(),
            max: feetSliderMax.toDouble(),
            value: feetValue.toDouble(),
            onChanged: feetSliderOnChanged,
          ),
          const SizedBox(
            height: 5,
          ),
          Slider(
            min: sliderMin.toDouble(),
            max: inchSliderMax.toDouble(),
            value: inchValue.toDouble(),
            onChanged: inchSliderOnChanged,
          ),
        ],
      ),
    );
  }
}

//Custom card widget used to build height & weight values for card having only one slider(height in cms,
//weight in kgs, weight in pounds)
class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.sliderOnChanged,
    required this.cardLabel,
    required this.hwValue,
    required this.siUnit,
    required this.sliderMin,
    required this.sliderMax,
    required this.divisions,//Provide divisions for smoothness in slider because of larger range.
  });

  final Function(double) sliderOnChanged; //Function of this card's slider.
  final String cardLabel; //Display name/Label for the card widget.
  final int hwValue; //Height & Weight value.
  final String siUnit; //SI unit i.e cms, inches, feet.
  final int sliderMin; //The minimum value of the slider.
  final int sliderMax; //The maximum value of the slider.
  final int
      divisions; //Number of divisions of the slider (Provide divisions for smoothness in slider because of larger range).

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          kBorderRadius.toDouble(),
        ),
        color: kAppSecondaryColour,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            cardLabel,
            style: vIconLabelTextStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                hwValue.toString(),
                style: kIconStyle,
              ),
              Text(
                siUnit.toString(),
                style: vIconLabelTextStyle,
              ),
            ],
          ),
          Slider(
            min: sliderMin.toDouble(),
            max: sliderMax.toDouble(),
            value: hwValue.toDouble(),
            onChanged: sliderOnChanged,
          ),
        ],
      ),
    );
  }
}
