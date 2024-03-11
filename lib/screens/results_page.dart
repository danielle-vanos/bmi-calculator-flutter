import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/calculation_button.dart';
import '../constants.dart';


class ResultsPage extends StatelessWidget {

  final double bmiScore;
  final String bmiLabel;
  final String bmiText;

  ResultsPage({required this.bmiScore, required this.bmiLabel, required this.bmiText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("BMI CALCULATOR")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Your Result",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                    bmiLabel,
                    style: TextStyle(
                        color: Color(0xFF24D876),
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  SizedBox(height: 50,),
                  Text(
                    bmiScore.toStringAsFixed(1),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 100,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50,),
                  Text(bmiText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22
                    ),)
                ]),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CalculationButton(
                  buttonText: "RE-CALCULATE",
                ))
          ],
        ));
  }
}
