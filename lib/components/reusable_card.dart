// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  late Color color;
  final Widget? cardChild;
  final VoidCallback? onCardClick;

  ReUsableCard({required this.color, this.cardChild, this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardClick,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: cardChild,
      ),
    );
  }
}
