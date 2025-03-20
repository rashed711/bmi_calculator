import 'package:bmi_calculator/funcitions/build_gander_item.dart';
import 'package:bmi_calculator/funcitions/weight_and_age.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';

class Bmihomescreen extends StatefulWidget {
  const Bmihomescreen({super.key});

  @override
  State<Bmihomescreen> createState() => _BmihomescreenState();
}

class _BmihomescreenState extends State<Bmihomescreen> {
  bool isMale = true;
  int height = 120;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('BMI Calculator'), centerTitle: true),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: buildGanderItem(
                        icon: Icons.male,
                        isActive: isMale,
                        text: 'MALE',
                        onPressed: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: buildGanderItem(
                        icon: Icons.female,
                        isActive: !isMale,
                        text: 'FEMAL',
                        onPressed: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'HIGHT',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'CM',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),

                      Slider(
                        min: 120,
                        max: 200,
                        value: height.toDouble(),
                        thumbColor: Colors.red,
                        activeColor: Colors.green,
                        inactiveColor: Colors.red,
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //////////////////////////////////////////////////////////////////////////////////////////////////
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: buildWeightOrAgeContainer(
                        titel: "WEIGHT",
                        value: weight,
                        addfunciton: () {
                          setState(() {
                            weight++;
                          });
                        },
                        removefunction: () {
                          setState(() {
                            weight--;
                          });
                        },
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: buildWeightOrAgeContainer(
                        titel: "AGE",
                        value: age,
                        addfunciton: () {
                          setState(() {
                            age++;
                          });
                        },
                        removefunction: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //////////////////////////////////////////////////////////////////////////////////////////////////
            Expanded(
              child: GestureDetector(
                onTap: () {
                  double result = weight / ((height / 100) * (height / 100));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(result: result),
                    ),
                  );
                },
                child: Container(
                  color: Colors.black,
                  child: const Center(
                    child: Text(
                      'Calculate BMI',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
