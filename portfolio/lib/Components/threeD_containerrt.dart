import 'package:flutter/material.dart';
import 'package:portfolio/Components/gradient_container.dart';

Widget build3dContainerright(double x, double y, GradientContainer chld) {
  return Transform(
    origin: Offset(320, 0),
    transform: Matrix4.identity()
      ..setEntry(3, 2, 0.001) // perspective
      ..rotateX(x) // rotated in the X axis
      ..rotateY(y), // rotated in the Y axis
    child: Container(
        margin: EdgeInsets.all(8.0),
        height: 320,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: chld,
        )),
  );
}
