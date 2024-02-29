// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:bmi_calculator_starter/consts.dart';
import 'package:bmi_calculator_starter/screens/input_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF645CEE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/calculator.jpg",
            scale: 5,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(80.0),
            child: Center(
              child: Text(
                "BMI CALCULATOR",
                style: KAppbarTextStyle,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: KBottomContainerHeight,
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: KBottomContainerColor,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Center(
                child: Text(
                  "Calculate BMI",
                  style: KButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
