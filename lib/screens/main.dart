import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.light(
        primary: Color(0xFF0A0E21),          
        ),
        useMaterial3: false, // To override the default
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white))
      ),
      home: InputPage()      
    );
  }
}

