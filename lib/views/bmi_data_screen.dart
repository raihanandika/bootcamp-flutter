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
                        Text("$height",
                            style: const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
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
              color: Colors.green,
            )),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Routename.bmiresultscreen);
              },
              child: Container(
                color: Colors.blue,
                height: 60,
                child: const Center(
                  child: Text("Hitung BMI"),
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
        ),
        const SizedBox(
          height: 15,
        ),
        Text(title, style: labelTextStyle),
      ],
    );
  }
}
