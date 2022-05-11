import 'dart:math';

import 'package:bootcamp_app/services/index.dart';
import 'package:bootcamp_app/views/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:bootcamp_app/views/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

// class MyApp extends StatelessWidget {
//   final ar = AppRoute();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "BMI Calculator",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: const Color(0xFF0A0E21),
//         scaffoldBackgroundColor: const Color(0xFF0A0E21),
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Color(0xFF0A0E21),
//         ),
//       ),
//       initialRoute: Routename.bmidatascreen,
//       routes: ar.allPages,
//     );
//   }
// }

class MyApp extends StatelessWidget {
  final ar = AppRoute();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: primaryColor,
        appBarTheme: AppBarTheme(backgroundColor: primaryColor),
      ),
      initialRoute: Routename.bmidatascreen,
      routes: ar.allPages,
    );
  }
}
