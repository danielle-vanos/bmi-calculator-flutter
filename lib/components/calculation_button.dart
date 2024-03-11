
import 'package:flutter/material.dart';

class CalculationButton extends StatelessWidget {

  String buttonText;

  CalculationButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topCenter,
      child: Text(buttonText, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
      color: Color(0xFFEB1555),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 80,
    );
  }
}
