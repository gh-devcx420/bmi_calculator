import 'package:flutter/material.dart';
import 'package:bmi/constants_variables.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.sliderOnChanged,
    required this.cardLabel,
    required this.hwValue,
    required this.siUnit,
    required this.sliderMin,
    required this.sliderMax,
    required this.divisions,
  });

  final Function(double) sliderOnChanged;//Function of this card's slider.
  final String cardLabel;//Display name/Label for the card widget.
  final int hwValue;//Height & Weight value.
  final String siUnit;//SI unit i.e cms, inches, feet.
  final int sliderMin;//The minimum value of the slider.
  final int sliderMax;//The maximum value of the slider.
  final int divisions;//The number of divisions between the min & max values of the slider.

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
            divisions: divisions,
            value: hwValue.toDouble(),
            onChanged: sliderOnChanged,
          ),
        ],
      ),
    );
  }
}
