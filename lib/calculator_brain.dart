import 'dart:math';


class CalculatorBrain {

  final int height;
  final int weight;
  late double _bmi; 

  CalculatorBrain({required this.height, required this.weight});

  calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    print(_bmi.toString());
    return _bmi;
  }

  bmiLabel(){
    if (_bmi > 25) {
      return "OVERWEIGHT";
    }
    else if (_bmi >18.5){
      return "NORMAL";
    }
    else{
      return "UNDERWEIGHT";
    }
  }

  bmiText(){
    if (_bmi > 25) {
      return "You have a higher than normal body weight.";
    }
    else if (_bmi >18.5){
      return "You have a normal body weight.";
    }
    else{
      return "You have a lower than normal body weight.";
    }
  }


}