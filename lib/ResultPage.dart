import 'package:flutter/material.dart';
import 'calculatorBrain.dart';
import 'package:full_bmi/Reusablecard.dart';
import 'package:full_bmi/calculate%20button.dart';
import 'Constantfile.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmi, this.result, this.feedback});
  final bmi;
  final result;
  final feedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: const EdgeInsets.all(50),
              child: Text(
                "YOUR BMI",
                style: TextStyle(fontSize: 30),
              )),
          Expanded(
            child: ReusableCard(
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result,
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmi,
                    style: LableTextStyle,
                  ),
                  Text(
                    feedback,
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              colour: Color(0XFF635f5e),
            ),
          ),
          CalculateButton(
            text: "Re-Calculate",
            onPress: () {
              Navigator.pushNamed(context, "/first");
            },
          )
        ],
      )),
    );
  }
}
