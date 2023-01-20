import 'dart:async';

import 'package:flutter/material.dart';
import './ScreenTwo.dart';

class ScreenOne extends StatefulWidget{
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne>{


@override
void initState() {
  // TODO: implement initState
  super.initState();
  startTime();
}
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black,
    body: initScreen(context),
  );
}

startTime() async {
  var duration = new Duration(seconds: 3);
  return new Timer(duration, route);
}
route() {
  Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => ScreenTwo()
  )
  );
}

initScreen(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black,
    body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* REKT icon */
            Image.asset(
              "assets/REKT LOGO.png",
              height: 88.05,
              width: 88,
            ),
          ],
        ),

      ),
    ),
  );
}}
