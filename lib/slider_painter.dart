import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class SliderPainter extends CustomPainter {
  @override


  double xPosition;
  double yPosition;
  double radius;


  SliderPainter(double xPosition, double yPosition, double radius){
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    this.radius = radius;
  }

  void paint(Canvas canvas, Size size) {
    var pen = Paint();
    double middleLocation = size.height / 2;
    double centerLocation = size.width / 2;
    pen.color = Colors.grey;
    pen.style = PaintingStyle.fill;

    canvas.drawLine (Offset (0,middleLocation),
        Offset (size.width, middleLocation), pen);
    canvas.drawCircle(
        Offset(xPosition, yPosition), radius, pen);
        print ("drawing at  x: $xPosition y: $yPosition");
  }



  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_app/main.dart';
// import 'package:flutter_app/slider_values.dart';

// class SliderPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var pen = Paint();
//     double middleLocation = size.height / 2;
//     double centerLocation = size.width / 2;
//     pen.color = Colors.grey;
//     pen.style = PaintingStyle.fill;
//     /* just for testing where the canvas is located.
//     canvas.drawLine(Offset (0,0),
//                     Offset (size.width,size.height), paint);
//     */
//     canvas.drawLine (Offset (0,middleLocation),
//         Offset (size.width, middleLocation), pen);
//     canvas.drawCircle(
//         Offset(SliderValues.xPosition,
//             SliderValues.yPosition), SliderValues.radius, pen);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }