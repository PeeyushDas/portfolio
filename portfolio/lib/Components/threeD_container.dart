import 'package:flutter/material.dart';

Widget build3dContainer(double x, double y, Widget chld, double Xoffset) {
  return Transform(
    origin: Offset(Xoffset, 0),
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
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: chld,
      ),
    ),
  );
}
