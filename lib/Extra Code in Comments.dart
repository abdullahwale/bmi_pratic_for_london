//TODO Step 01 to Use theme
/*
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: InputPage(),
    );
  }
import 'package:flutter/cupertino.dart';
}
 */
//TODO Step 02 to Use Website Provided Theme
/*
MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
      ),
      home: InputPage(),
    );
 */
//TODO Step 03 to Use Custome Theme Properties
/*
MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF1F184C),
        scaffoldBackgroundColor: Color(0xFFF1F5FF),
        accentColor: Colors.black,
        textTheme: TextTheme(body1: TextStyle(color: Colors.black87)),
      ),
      home: InputPage(),
    );
 */
//TODO Step 04 to Use Copywith property
/*
MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1F184C),
        scaffoldBackgroundColor: Color(0x272727),
      ),
      home: InputPage(),
    );
 */
//TODO Step 05 to Use theme property on a single widget
/*
floatingActionButton: Theme(
        //data: ThemeData.light(),
        //or Some Custome
        data: ThemeData(
          accentColor: Colors.purple,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
 */
//TODO Step 06 Seprate input_page
/*
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
    );
  }
}

 */
/*
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1F184C),
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: InputPage(),
    );
  }
}

 */
//TODO Step 07 Create Widgets of BOX Hard Coded
/*
Container(
        color: Color(0xFF1D1E33),
        margin: EdgeInsets.all(15.0),
        height: 200.0,
        width: 170.0,
      ),
 */
//TODO Step 08 Create Widgets of BOX light Corner
/*
Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 200.0,
        width: 170.0,
      ),
 */
//TODO Step 09 Create Widgets of BOX useing expanded widget
/*
Column(children: [
        Expanded(child: Row(
          children: [
            Expanded(child: null),
            Expanded(child: null),
          ],
        ),),
        Expanded(child: null),
        Expanded(child: Row(
          children: [
            Expanded(child: null),
            Expanded(child: null),
          ],
        ),),
      ],),
     //////////////////////
      Container(
margin: EdgeInsets.all(15.0),
decoration: BoxDecoration(
color: Color(0xFF1D1E33),
borderRadius: BorderRadius.circular(10.0),
),
height: 200.0,
width: 170.0,
),
 */
//TODO Step 10 Deign
/*
Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 200.0,
                    width: 170.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 200.0,
                    width: 170.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 200.0,
              width: 170.0,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 200.0,
                    width: 170.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 200.0,
                    width: 170.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
 */
//TODO Step 11 Extract Container Widget
/*

class _InputPageState extends State<InputPage> {
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
                Expanded(child: ReuseableContainer()),
                Expanded(child: ReuseableContainer()),
              ],
            ),
          ),
          Expanded(
            child: ReuseableContainer(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseableContainer()),
                Expanded(child: ReuseableContainer()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReuseableContainer extends StatelessWidget {
  const ReuseableContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 200.0,
      width: double.infinity,
    );
  }
}
 */
//TODO Step 12 Extract Improved Container Widget
/*
class ReuseableContainer extends StatelessWidget {
 //final Color colorr;
  Color colorr; //Color(0xFF1D1E33),
  ReuseableContainer({@required this.colorr});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colorr,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 200.0,
      width: double.infinity,
    );
  }
}
 */
//TODO Step 13 Extract Further Improved Container Widget
/*
final Widget cardWidget;
  ReuseableContainer({@required this.colorr,this.cardWidget});
  //Add Child Property of Container
  child: cardWidget,
 */
//TODO Step 14 Extract Further Improved Container Widget
/*
colorr: activeColor,
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          size: 50.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
 */
//TODO Step 15 Extract Coloumn Widget
/*
class iconColumn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.ac_unit_outlined,
          size: 50.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "Male",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}
 */
//TODO Step 16 Extract Improved Coloumn Widget Recieve Icon
/*
class iconColumn extends StatelessWidget {
  iconColumn({@required this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}
 */
/*
child: ReuseableContainer(
                    colorr: activeColor,
                    cardWidget: iconColumn(
                      icon: Icons.accessibility,
                      label: "Female",
                    ),
                  ),
 */
//TODO Step 17 Make Seprate Files
//TODO Step 18 Add Flat Button not rigt for our app
/*
child: FlatButton(
                    child: ReuseableContainer(
                      colorr: activeColor,
                      cardWidget: iconColumn(
                        icon: Icons.ac_unit_outlined,
                        label: "Male",
                      ),
                    ),
                  ),
 */
//TODO Step 18 Add GestureDetector and Color Scheme
/*
const inactiveColor = Color(0xFF111320);
Color maleColor = inactiveColor;
Color femaleColor = inactiveColor;

 */
//TODO Step 19 Create Update Function and Call in SetState Method
/*
void upDateColor(int gender) {
    if (gender == 1) {
      if (maleColor == inactiveColor) {
        maleColor = activeColor;
      } else {
        maleColor = inactiveColor;
      }
    }
    if (gender == 2) {
      if (femaleColor == inactiveColor) {
        femaleColor = activeColor;
      } else {
        femaleColor = inactiveColor;
      }
    }
  }
 */
/*
child: GestureDetector(
                    onTap: () {
                      setState(() {
                        upDateColor(1);
                      });
                      // print("Male Card Cliked");
                    },
                    child: ReuseableContainer(
                      colorr: maleColor,
                      cardWidget: iconColumn(
                        icon: Icons.ac_unit_outlined,
                        label: "Male",
                      ),
                    ),
                  ),
 */
//TODO Step 20 Update the UpdateColor method for shuffling color
/*
void upDateColor(int gender) {
    if (gender == 1) {
      if (maleColor == inactiveColor) {
        maleColor = activeColor;
        femaleColor = inactiveColor;
      } else {
        maleColor = inactiveColor;
      }
    }
    if (gender == 2) {
      if (femaleColor == inactiveColor) {
        femaleColor = activeColor;
        maleColor = inactiveColor;
      } else {
        femaleColor = inactiveColor;
      }
    }
  }
 */
//TODO Step 21 Introducing Enumeration
/*
enum Gender { male, female, }
===============================

void upDateColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleColor == inactiveColor) {
        maleColor = activeColor;
        femaleColor = inactiveColor;
      } else {
        maleColor = inactiveColor;
      }
    }
    if (gender == Gender.female) {
      if (femaleColor == inactiveColor) {
        femaleColor = activeColor;
        maleColor = inactiveColor;
      } else {
        femaleColor = inactiveColor;
      }
    }
  }


  ///////////////////////
  upDateColor(Gender.male);
 */
//TODO Step 22 Introducing Ternery Operator
/*
Gender selectedGender;
======================
setState(() {selectedGender = Gender.male;});
//upDateColor(Gender.male);
=========================
selectedGender == Gender.male ? activeColor : inactiveColor,
 */
//TODO Step 23 Add Bottom Container in App UI
/*
Container(
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.only(bottom: 20.0),
            width: double.infinity,
            height: 70.0,
            color: Colors.lightGreen,
            child: Center(
              child: Text(
                "Calculate",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
 */
//TODO Step 24 Remove Gesture Detector Widget and Add Gesture Detector in ReuseableConatiner
//TODO Step 25 Use "Function" as a parameter and AdJust gesturedetector in ReuseableConatiner
/*
final Function onPress;
  ReuseableContainer({@required this.colorr, this.cardWidget,this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardWidget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colorr,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
 */
//TODO Step 26 Use now on Resuseable card widget
/*
onPress: (){
                      setState(() {
                        selectedGender=Gender.male;
                      });
                    },
 */
