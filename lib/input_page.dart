import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colr: activeCardColor,
                    cardChild: IconContent(
                      FontAwesomeIcons.mars,
                      'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colr: activeCardColor,
                    cardChild: IconContent(
                      FontAwesomeIcons.venus,
                      'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReuseableCard(colr: activeCardColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseableCard(colr: activeCardColor)),
                Expanded(child: ReuseableCard(colr: activeCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}