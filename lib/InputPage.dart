import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'Gendercardcolumn.dart';
import 'Reusablecard.dart';
import 'Constantfile.dart';
import 'RoundedIconButton.dart';
import 'calculate button.dart';
import 'calculatorBrain.dart';
import 'ResultPage.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var selectedGenderColor;
  int height = 150;
  int weight = 60;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Center(
          child: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGenderColor = Gender.male;
                  });
                },
                colour: selectedGenderColor == Gender.male
                    ? ActiveCardColor
                    : InActiveCardColor,
                childCard: GenderCardColumn(
                  icon: FontAwesomeIcons.mars,
                  text: ("Male"),
                ),
              )),
              Expanded(
                  child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGenderColor = Gender.female;
                  });
                },
                colour: selectedGenderColor == Gender.female
                    ? ActiveCardColor
                    : InActiveCardColor,
                childCard: GenderCardColumn(
                  icon: FontAwesomeIcons.venus,
                  text: ("Female"),
                ),
              ))
            ],
          )),
          Expanded(
              child: ReusableCard(
            colour: ActiveCardColor,
            childCard: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HIEGHT"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: LableTextStyle,
                    ),
                    Text("cm")
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0XFFf29f1a),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0)),
                  child: Slider(
                    min: 100,
                    max: 220,
                    activeColor: Color(0XFFf29f1a),
                    value: height.toDouble(),
                    onChanged: (double newheight) {
                      setState(() {
                        height = newheight.round();
                      });
                    },
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                colour: ActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("WEIGHT"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          weight.toString(),
                          style: LableTextStyle,
                        ),
                        Text("kg")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundedIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        RoundedIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                child: ReusableCard(
                  colour: ActiveCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("AGE"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            age.toString(),
                            style: LableTextStyle,
                          ),
                          Text("yrs")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(width: 10),
                          RoundedIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
          CalculateButton(
              text: "Calculate",
              onPress: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              bmi: calc.calculateBMI(),
                              feedback: calc.feedback(),
                              result: calc.yourCondition(),
                            )));
              })
        ],
      )),
    );
  }
}
