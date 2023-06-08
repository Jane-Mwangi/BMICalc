import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Color(0xFF0A0E21),
      // ),
      // home: InputPage(),
      title: "BMI Calculator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff0a0e21),
        ),
        scaffoldBackgroundColor: Color(0xff0a0e21),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 20.0, fontStyle: FontStyle.normal),
          bodyMedium: TextStyle(fontSize: 15.0, fontFamily: 'Roboto'),
        ),
      ),
      home: InputPage(),
    );
  }
}


