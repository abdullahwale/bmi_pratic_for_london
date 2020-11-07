import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reUseableCardWidgets.dart';
import 'reuseContainerWidget.dart';

const activeColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111320);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                        //upDateColor(Gender.male);
                      });
                      // print("Male Card Cliked");
                    },
                    child: ReuseableContainer(
                      colorr: selectedGender == Gender.male
                          ? activeColor
                          : inactiveColor,
                      cardWidget: iconColumn(
                        icon: Icons.ac_unit_outlined,
                        label: "Male",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                        // upDateColor(Gender.female);
                      });
                    },
                    child: ReuseableContainer(
                      colorr: selectedGender == Gender.female
                          ? activeColor
                          : inactiveColor,
                      cardWidget: iconColumn(
                        icon: Icons.accessibility,
                        label: "Female",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableContainer(colorr: activeColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseableContainer(colorr: activeColor)),
                Expanded(child: ReuseableContainer(colorr: activeColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
