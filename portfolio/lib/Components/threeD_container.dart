import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

Widget build3dContainer(double x, double y, Widget chld, double Xoffset) {
  return Builder(
    builder: (context) {
      final screenWidth = MediaQuery.of(context).size.width;
      final screenHeight = MediaQuery.of(context).size.height;
      final isMobile = ResponsiveHelper.isMobile(context);

      final containerSize = isMobile ? screenWidth * 0.85 : screenWidth * 0.22;

      final containerHeight =
          isMobile ? screenHeight * 0.35 : screenHeight * 0.4;

      final borderRadius = isMobile ? screenWidth * 0.04 : screenWidth * 0.015;

      final borderWidth = isMobile ? screenWidth * 0.003 : screenWidth * 0.0015;

      final margin = AppDimensions.getSmallPadding(context);

      return Transform(
        origin: Offset(Xoffset, 0),
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateX(x)
          ..rotateY(y),
        child: Container(
          margin: EdgeInsets.all(margin),
          height: containerHeight,
          width: containerSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: Colors.transparent,
            border: Border.all(
              color: Colors.grey,
              width: borderWidth,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: chld,
          ),
        ),
      );
    },
  );
}
