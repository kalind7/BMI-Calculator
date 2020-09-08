import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContainer extends StatelessWidget {
  final IconData icon ;
  final String  label;
  IconContainer({this.icon, this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80, color: Colors.white,),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), )
      ],
    );
  }
}



