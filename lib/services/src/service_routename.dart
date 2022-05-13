import 'package:bootcamp_app/views/index.dart';
import 'package:bootcamp_app/services/index.dart';
import 'package:bootcamp_app/models/index.dart';

class AppRoute {
  final allPages = {
    // Routename.inputscreen: ((context) => InputPage()),
    // Routename.resultscreen: ((context) =>
    //     ResultsPage(interpretation: "", bmiResult: "", resultText: ""))
    Routename.bmidatascreen: ((context) => const BmiDataScreen()),
    Routename.bmiresultscreen: ((context) => const BmiResultScreen(
          bmi: 0.0,
          coment: "",
        )),
  };
}
