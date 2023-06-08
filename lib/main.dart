import 'package:flutter/material.dart';

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
          displayLarge: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 25.0, fontStyle: FontStyle.normal),
          bodyMedium: TextStyle(fontSize: 15.0, fontFamily: 'Roboto'),
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
    );
  }
}
