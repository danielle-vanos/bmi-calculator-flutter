
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color colour;
  final Widget? cardChild;
  final Function()? changeCardColour; 

  ReusableCard({this.colour = const Color(0xFF1D1E33), this.cardChild, this.changeCardColour});  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: changeCardColour,
        child: cardChild
        ), 
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: this.colour,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}

          