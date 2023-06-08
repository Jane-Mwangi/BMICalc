import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body:Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(color: Color(0xff1D1E33),)),
              Expanded(child: ReusableCard(color:  Color(0xff1D1E33),))
            ],
          )),
          Expanded(child: ReusableCard(color:  Color(0xff1D1E33),)),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(color:  Color(0xff1D1E33),)),
              Expanded(child: ReusableCard(color:  Color(0xff1D1E33),)),
            ],
          )),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
 
  Color color;
   ReusableCard({ required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: const Color(0xff1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
