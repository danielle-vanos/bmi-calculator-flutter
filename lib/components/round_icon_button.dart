
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  
  final Function() ? onPressed;
  final IconData icon;

  RoundIconButton({this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 16,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 48, height: 48),

      );
  }
}