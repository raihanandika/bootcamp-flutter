import 'package:bootcamp_app/views/bmi_data_screen.dart';
import 'package:bootcamp_app/views/constants/constants.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final double bmi;
  final String coment;
  const BmiResultScreen({Key? key, required this.bmi, required this.coment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hasil Hitung BMI"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: const Center(
              child: Text(
                "Hasil Perhitungan",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )),
          Expanded(
              flex: 5,
              child: BmiCard(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Normal", style: resultTextStyle(40)),
                      Text(bmi.toStringAsFixed(1), style: resultTextStyle(40)),
                      Text(
                        coment,
                        textAlign: TextAlign.center,
                        style: resultTextStyle(40),
                      )
                    ],
                  ),
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: Color(0xFFEC3C66),
              height: 60,
              child: const Center(
                child: Text(
                  "Hitung Ulang",
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
    );
  }
}
