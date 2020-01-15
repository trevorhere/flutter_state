import 'package:flutter/material.dart';
// you might have something other than "flutter_curved_slider_2"
// here in this import...
import 'package:flutter_app/slider_painter.dart';


class CurvedSlider extends StatefulWidget {

  double fingerX = 0;
  double fingerY = 0;
  double radius = 20;

  
  @override
  _CurvedSliderState createState() => _CurvedSliderState();

}


class _CurvedSliderState extends State<CurvedSlider>  {
  
  // position of the finger.  This is seperate because the finger and slider
  // position may not always be the same in future projects.
  double fingerX = 0;
  double fingerY = 0;
  double radius = 20;



  void _updateLocation (PointerEvent details) {
    // fingerX = 
    // fingerY = 

    setState(() {
      fingerX = details.localPosition.dx;
      fingerY = details.localPosition.dy;
    });
  }
  
  // void _processFingerInput () {
  //       setState (() {
  //           // this is where a function that maps
  //           // finger posn to slider posn would go.
  //           notifyObservers();
  //       // SliderValues.xPosition = fingerX;
  //       // SliderValues.yPosition = fingerY;
  //     });
  //   }

  double getxPosition () {
    return this.fingerX;
  }

  double getyPosition () {
    return this.fingerY;
  }

  double getRadius(){
    return this.radius;
  }

  void _fingerDown (PointerEvent details) {
    _updateLocation (details);
    // _processFingerInput ();
   //  print ("finger down $fingerX");
  }

  void _fingerMove (PointerEvent details) {
    _updateLocation (details);
    // _processFingerInput ();
    // print ("finger move $fingerX");
  }
  

  // a required override.
  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: double.infinity,
        height: 100,
        color: Colors.white,
        child: Listener(
            // where I deal with user events.
            onPointerDown: _fingerDown,
            onPointerMove: _fingerMove,
            // where I define the callback for redraws.
            child: CustomPaint (
              painter: SliderPainter(fingerX, fingerY, radius),
            )
        ),
      );
  }
}
