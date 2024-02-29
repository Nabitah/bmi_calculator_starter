// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:bmi_calculator_starter/components/bottom_button.dart';
import 'package:bmi_calculator_starter/consts.dart';
import 'package:bmi_calculator_starter/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultPage({
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "YOUR RESULT",
          style: KAppbarTextStyle,
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 400,
              width: 500,
              child: Expanded(
                flex: 10,
                child: ReUsableCard(
                  color: KActiveCardColor,
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Your Current BMI is",
                            textAlign: TextAlign.center, style: KBodyTextStyle),
                      ),
                      Text(bmiResult, style: KBMITextStyle),
                      Text(resultText, style: KResultTextStyle),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                interpretation,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          BottomButton(
              buttonTitle: "Details",
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
