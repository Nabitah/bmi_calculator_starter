// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const ButtonIcon({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.black26,
      elevation: 0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 50,
        width: 50,
      ),
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
