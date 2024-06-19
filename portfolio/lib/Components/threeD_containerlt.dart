import 'package:flutter/material.dart';

Widget build3dContainerleft(double x, double y, Widget chld) {
  return Transform(
    transform: Matrix4.identity()
      ..setEntry(3, 2, 0.001) // perspective
      ..rotateX(x) // rotated in the X axis
      ..rotateY(y), // rotated in the Y axis
    child: Container(
      margin: EdgeInsets.all(8.0),
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: chld,
    ),
  );
}
