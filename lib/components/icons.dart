// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../consts.dart';

class IconWidget extends StatelessWidget {
  final String imagePath;
  final String label;

  IconWidget({
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: KLabelTextStyle,
        ),
      ],
    );
  }
}
