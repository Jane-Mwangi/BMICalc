import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final VoidCallback onPress; // this

  const ReusableCard({
    super.key,
    required this.color,
    this.cardChild = const SizedBox(),
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: cardChild,
          width: 300.0,
          height: 300.0,
        ),
      ),
    );
  }
}
