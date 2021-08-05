import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(height: 56, width: 56),
      fillColor: Color(0XFFf29f1a),
    );
  }
}
