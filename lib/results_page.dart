import 'package:bmicalculator/Reusable_card.dart';
import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: (){},
              colour: activeContainerColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      'Normal',
                    style: resultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: bmiTextStyle,
                  ),
                  Text(
                    'Your BMI result is quite low, you should eat more!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  )
                ],
              ),
            ),

          )
        ],
      ),
    );
  }
}
