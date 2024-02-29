// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../consts.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    required this.buttonTitle,
    required this.onTap,
  });

  final String buttonTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: KBottomContainerHeight,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: KBottomContainerColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: KButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
