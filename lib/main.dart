import 'package:bmi_calculator/screens/bmi_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Bmihomescreen();
  }
}
