import 'package:flutter/material.dart';

class ReuseableContainer extends StatelessWidget {
  final Color colorr; //Color(0xFF1D1E33),
  final Widget cardWidget;
  ReuseableContainer({@required this.colorr, this.cardWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardWidget,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colorr,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
