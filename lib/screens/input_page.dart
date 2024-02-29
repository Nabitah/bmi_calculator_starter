// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:bmi_calculator_starter/calculator_brain.dart';
import 'package:bmi_calculator_starter/components/bottom_button.dart';
import 'package:bmi_calculator_starter/components/button_icon.dart';
import 'package:bmi_calculator_starter/components/gender.dart';
import 'package:bmi_calculator_starter/components/reusable_card.dart';
import 'package:bmi_calculator_starter/components/icons.dart';
import 'package:bmi_calculator_starter/screens/first_page.dart';
import 'package:bmi_calculator_starter/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_starter/consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wheel_slider/wheel_slider.dart';
import 'package:bmi_calculator_starter/calculator_brain.dart';

enum GEnder { male, female, none }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color selectedColor = KInactiveCardColor;
  GEnder selectedGender = GEnder.none;

  int height = 220;
  int value = (0 - 220);
  int weight = 65;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI CALCULATOR",
            style: KAppbarTextStyle,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUsableCard(
                    onCardClick: () {
                      setState(() {
                        selectedGender = GEnder.male;
                      });
                    },
                    color: selectedGender == GEnder.male
                        ? KActiveCardColor
                        : KInactiveCardColor,
                    cardChild: Gender(
                      imagePath: "images/male.jpg",
                      gender: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    onCardClick: () {
                      setState(() {
                        selectedGender = GEnder.female;
                      });
                    },
                    color: selectedGender == GEnder.female
                        ? KActiveCardColor
                        : KInactiveCardColor,
                    cardChild: Gender(
                      imagePath: "images/female.jpg",
                      gender: "Female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReUsableCard(
              color: KActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "Height",
                        style: KNumberTextStyle,
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          "(cm)",
                          style: KLabelTextStyle,
                        ),
                      ),
                    ],
                  ),
                  WheelSlider.number(
                    perspective: 0.01,
                    totalCount: height,
                    initValue: value,
                    selectedNumberStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                    unSelectedNumberStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54,
                    ),
                    currentIndex: value,
                    onValueChanged: (val) {
                      setState(() {
                        value = val;
                      });
                    },
                    hapticFeedbackType: HapticFeedbackType.heavyImpact,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUsableCard(
                    color: KActiveCardColor,
                    cardChild: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                "Weight",
                                style: KNumberTextStyle,
                              ),
                              Text(
                                "(kg)",
                                style: KLabelTextStyle,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "$weight",
                          style: KNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(7.0),
                              child: ButtonIcon(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: ButtonIcon(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    color: KActiveCardColor,
                    cardChild: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                "Age",
                                style: KNumberTextStyle,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "$age",
                          style: KNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(7.0),
                              child: ButtonIcon(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: ButtonIcon(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
              buttonTitle: "Calculate Your BMI",
              onTap: () {
                CalculatorBrain brain = CalculatorBrain(
                  height: height,
                  weight: weight,
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmiResult: brain.calculateBmi(),
                      resultText: brain.getResult(),
                      interpretation: brain.getInterpretation(),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
