import 'package:bootcamp_app/views/index.dart';
import 'package:bootcamp_app/services/index.dart';
import 'package:bootcamp_app/models/index.dart';

class AppRoute {
  final allPages = {
    Routename.inputscreen: ((context) => InputPage()),
    Routename.resultsscreen: ((context) =>
        ResultsPage(interpretation: "", bmiResult: "", resultText: ""))
  };
}
