
import 'package:flutter/material.dart';

class BMIContainer extends StatelessWidget {

  final Widget child;
  final Function  onPress;
  final Color color;


  BMIContainer({this.child, this.onPress, this.color});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),

    );
  }
}
