import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_Content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff1D1E33);
const inactiveCardColor = Color(0xff111328);
const bottomContainerColor = Color(0xffEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColor;
  Color femaleCardColour = inactiveCardColor;

  void updateColour(int gender) {
    //male card pressed
    if (gender == 1) {
      if (maleCardColour == inactiveCardColor) {
        maleCardColour = activeCardColor;
        femaleCardColour=inactiveCardColor;
      } else {
        maleCardColour = inactiveCardColor;
      }
    }
    if (gender==2){
      if (femaleCardColour == inactiveCardColor) {
        femaleCardColour = activeCardColor;
        maleCardColour=inactiveCardColor;

      } else {
        maleCardColour = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColour(1);
                  });
                },
                child: ReusableCard(
                  color: maleCardColour,
                  cardChild: const IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              )),
              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColour(2);
                      });
                    },
                    child: const ReusableCard(
                color: activeCardColor,
                cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                ),
              ),
                  ))
            ],
          )),
          const Expanded(
              child: ReusableCard(
            color: activeCardColor,
            cardChild: null,
          )),
          const Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                color: activeCardColor,
                cardChild: null,
              )),
              Expanded(
                  child: ReusableCard(
                color: activeCardColor,
                cardChild: null,
              )),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
