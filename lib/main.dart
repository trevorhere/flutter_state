// painting and canvas code inspired by (and base code copied from)
// https://hackernoon.com/drawing-custom-shapes-and-lines-using-canvas-and-path-in-flutter-997dfb8fde5a
// and the example at
// https://api.flutter.dev/flutter/widgets/Listener-class.html

// starter code for CS 456 Winter 2020.
// you can write your project code in these files if you like.
// or you can just use them for reference.
// there are many ways to do things in Flutter, this is one way...​

import 'package:flutter/material.dart';
// you might have something other than "flutter_curved_slider_2"
// here in this import...
// import 'package:flutter_app/slider_painter.dart';
// import 'package:flutter_app/curved_slider_state.dart';
import 'package:flutter_app/curved_slider.dart';



void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Curved Slider'),
          backgroundColor: Colors.blueGrey,
        ),
        body: CurvedSlider(),
      ),
    ),
  );}

// this is my stateful widget.
// the interesting work happens in _CurvedSliderState

// // where I keep the state of the widget.
// class SliderValues extends Object {
//   // add all the state you want here.
//   // this is the xposition of the slider.
//   // this is an abomination and you don't have to
//   // do the curved slider if you can find a
//   // more dart-ful way of doing it.  mdj 1/14/20
//   // send me your code if you think you've got it.
//   // to get credit for the curved slider, your approach
//   // should be conceptually different than others already turned in.
//   // as of now (1/14/2020 at 4:01pm no solutions have been turned in
//   // and evaluated)
//   static double xPosition = 0;
//   static double yPosition = 0;
//   static double radius = 20.0;
// }
