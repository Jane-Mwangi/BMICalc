import 'package:flutter/material.dart';

const  labelTextStyle =TextStyle(
  fontSize: 18.0,
  color: Color(0xff8D8E98),
);
class IconContent extends StatelessWidget {
  const IconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}