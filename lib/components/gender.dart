// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables
import 'package:bmi_calculator_starter/consts.dart';
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  final String imagePath;
  final String gender;
  final Color color;

  Gender(
      {required this.gender,
      required this.imagePath,
      this.color = Colors.black});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset(
            imagePath,
            scale: 2,
          ),
        ),
        Text(
          gender,
          style: KNumberTextStyle,
        ),
      ],
    );
  }
}
