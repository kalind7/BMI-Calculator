
import 'package:body_mind_index/Widgets/bmiContainer.dart';
import 'package:body_mind_index/Widgets/iconContainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: BMICalculator(),
    );
  }
}

// ignore: must_be_immutable
class BMICalculator extends StatelessWidget {
  static const Color activeColor =Color(0xff111428);
  static const Color pressedColor = Color(0xff1D1F33);
  Color maleColor =Color(0xff111428);
  Color femaleColor = Color(0xff1D1F33);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text ('BMI Calculator')),
      ),

          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: BMIContainer(
                          child: IconContainer(
                          icon: FontAwesomeIcons.mars,
                            label : 'Male',
                          ),
                      ),
                    ),

                    Expanded(
                        child: BMIContainer(
                            color: femaleColor,
                          child: IconContainer(
                           icon: FontAwesomeIcons.venus,
                            label : 'Female',
                          ),
                        ),
                    ),

                  ],
                ),
              ),

              Expanded(
                child: BMIContainer(
                  color: activeColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Height', style: TextStyle(fontSize: 15),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text('183', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                          Text('cm'),

                        ],
                      ),
                      Slider(
                        value: 190,
                        min: 120,
                        max: 290,

                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: BMIContainer(
                          color: activeColor,
                        )
                    ),

                    Expanded(
                        child: BMIContainer(
                          color: activeColor,
                        )),
                  ],
                ),
              ),

            ],
          ),

        );


}
}


