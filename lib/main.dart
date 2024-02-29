// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:bmi_calculator_starter/screens/first_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(HealthBmiCalculator());

class HealthBmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: !true,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF645CEE),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF645CEE),
        ),
      ),
      home: FirstPage(),
    );
  }
}
