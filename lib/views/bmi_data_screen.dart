import 'dart:math';

import 'package:bootcamp_app/services/index.dart';
import 'package:bootcamp_app/views/constants/constants.dart';
import 'package:bootcamp_app/views/index.dart';
import 'package:flutter/material.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({Key? key}) : super(key: key);

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  int height = 100;
  int weight = 100;
  int age = 20;

  double calculateBmi() {
    double heightInMeter = height / 100;

    // final h = pow(height, 2);
    final h = (heightInMeter * heightInMeter);
    final bmi = weight / h;
    return bmi;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF0A0E21),
        appBar: AppBar(
          title: const Center(child: Text("BMI Calculator")),
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
              child: Row(
                children: const [
                  Expanded(
                      child: BmiCard(
                          child:
                              GenderIconText(title: "Male", icon: Icons.male))),
                  Expanded(
                      child: BmiCard(
                    child: GenderIconText(title: "Female", icon: Icons.female),
                  ))
                ],
              ),
            )),
            Expanded(
                child: Container(
              child: BmiCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("$height", style: numberTextStyle),
                        const SizedBox(height: 12),
                        Text(
                          "CM",
                          style: labelTextStyle,
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 80,
                        max: 200,
                        onChanged: (value) {
                          height = value.toInt();
                          setState(() {
                            print(height);
                          });
                        })
                  ],
                ),
              ),
            )),
            Expanded(
                child: Container(
              child: Row(
                children: [
                  Expanded(
                      child: BmiCard(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: labelTextStyle,
                          ),
                          Text("$weight", style: numberTextStyle),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                onPressed: () {
                                  weight++;
                                  setState(() {});
                                },
                                elevation: 0,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                shape: CircleBorder(),
                                fillColor: Color(0xff212747),
                                constraints: BoxConstraints.tightFor(
                                    width: 56, height: 56),
                              ),
                              SizedBox(width: 10),
                              RawMaterialButton(
                                onPressed: () {
                                  weight--;
                                  setState(() {});
                                },
                                elevation: 0,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                shape: CircleBorder(),
                                fillColor: Color(0xff212747),
                                constraints: BoxConstraints.tightFor(
                                    width: 56, height: 56),
                              ),
                            ],
                          )
                        ]),
                  )),
                  Expanded(
                      child: BmiCard(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: labelTextStyle,
                          ),
                          Text("$age", style: numberTextStyle),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                onPressed: () {
                                  age++;
                                  setState(() {});
                                },
                                elevation: 0,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                shape: CircleBorder(),
                                fillColor: Color(0xff212747),
                                constraints: const BoxConstraints.tightFor(
                                    width: 56, height: 56),
                              ),
                              SizedBox(width: 10),
                              RawMaterialButton(
                                onPressed: () {
                                  age--;
                                  setState(() {});
                                },
                                elevation: 0,
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                shape: CircleBorder(),
                                fillColor: Color(0xff212747),
                                constraints: const BoxConstraints.tightFor(
                                    width: 56, height: 56),
                              ),
                            ],
                          )
                        ]),
                  ))
                ],
              ),
            )),
            GestureDetector(
              onTap: () {
                // Navigator.of(context).pushNamed(Routename.bmiresultscreen, arguments: calculateBmi());
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BmiResultScreen(bmi: calculateBmi());
                }));
              },
              child: Container(
                color: Color(0xFFEC3C66),
                height: 60,
                child: const Center(
                  child: Text(
                    "Hitung BMI",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BmiCard extends StatelessWidget {
  const BmiCard({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color(0xff272A4E),
          borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}

class GenderIconText extends StatelessWidget {
  const GenderIconText({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(title, style: labelTextStyle),
      ],
    );
  }
}
