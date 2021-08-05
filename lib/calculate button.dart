import 'package:flutter/material.dart';
import 'Constantfile.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({
    this.onPress,
    this.text,
  });
  final Function onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: BottomContainerHeight,
        color: BottomContainerColor,
        child: Center(
            child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
          ),
        )),
      ),
    );
  }
}
