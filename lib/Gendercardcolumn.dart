import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenderCardColumn extends StatelessWidget {
  GenderCardColumn({this.text, this.icon});

  String text;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60,
          color: Color(0Xffe0dae6),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 30,
            color: Color(0Xffe0dae6),
          ),
        )
      ],
    );
  }
}
