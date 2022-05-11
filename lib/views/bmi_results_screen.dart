import 'package:flutter/material.dart';

class BmiResultScreen extends StatefulWidget {
  const BmiResultScreen({Key? key}) : super(key: key);

  @override
  State<BmiResultScreen> createState() => _BmiResultScreenState();
}

class _BmiResultScreenState extends State<BmiResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hasil Hitung BMI"),
      ),
    );
  }
}
