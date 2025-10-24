import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

class IconContent extends StatelessWidget {
  IconContent(this.IconName, this.Label);
  final IconData IconName;
  final String Label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(IconName, size: 80.0),
        SizedBox(height: 15.0),
        Text(Label, style: labelTextStyle),
      ],
    );
  }
}
