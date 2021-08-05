import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.age});

  final int weight;
  final int height;
  final int age;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String yourCondition() {
    if (_bmi >= 25) {
      return "overweight";
    } else if (_bmi > 18) {
      return "normal";
    } else {
      return "underweight";
    }
  }

  String feedback() {
    if (_bmi >= 25) {
      return "You are overweight,try to exercise more.";
    } else if (_bmi > 18) {
      return "You are normal,good job!";
    } else {
      return "You are underweight,try to eat more.";
    }
  }
}
