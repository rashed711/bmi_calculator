import 'package:flutter/material.dart';

class Bmihomescreen extends StatefulWidget {
  const Bmihomescreen({super.key});

  @override
  State<Bmihomescreen> createState() => _BmihomescreenState();
}

class _BmihomescreenState extends State<Bmihomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator'), centerTitle: true),
      body: Container(),
    );
  }
}
