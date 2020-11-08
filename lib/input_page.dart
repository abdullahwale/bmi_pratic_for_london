import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reUseableCardWidgets.dart';
import 'reuseContainerWidget.dart';
import 'constantFile.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colorr: selectedGender == Gender.male
                        ? kactiveColor
                        : kinactiveColor,
                    cardWidget: iconColumn(
                      icon: Icons.ac_unit_outlined,
                      label: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colorr: selectedGender == Gender.female
                        ? kactiveColor
                        : kinactiveColor,
                    cardWidget: iconColumn(
                      icon: Icons.accessibility,
                      label: "Female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableContainer(
              colorr: kactiveColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        "cm",
                        style: kLabelStyle,
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.yellowAccent,
                    inactiveColor: Colors.lightGreenAccent,
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    min: 120,
                    max: 220,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseableContainer(colorr: kactiveColor)),
                Expanded(child: ReuseableContainer(colorr: kactiveColor)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.only(bottom: 20.0),
            width: double.infinity,
            height: 70.0,
            color: Colors.lightGreen,
            child: Center(
              child: Text(
                "Calculate",
                style: kbottemContainerStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
  // Color maleColor = inactiveColor;
  // Color femaleColor = inactiveColor;
//1 for male and 2 for female
//   void upDateColor(Gender gender) {
//     if (gender == Gender.male) {
//       if (maleColor == inactiveColor) {
//         maleColor = activeColor;
//         femaleColor = inactiveColor;
//       } else {
//         maleColor = inactiveColor;
//       }
//     }
//     if (gender == Gender.female) {
//       if (femaleColor == inactiveColor) {
//         femaleColor = activeColor;
//         maleColor = inactiveColor;
//       } else {
//         femaleColor = inactiveColor;
//       }
//     }
//   }
 */
