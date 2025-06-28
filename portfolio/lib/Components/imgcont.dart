import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = ResponsiveHelper.isMobile(context);

    final containerSize = isMobile ? screenWidth * 0.85 : screenWidth * 0.22;

    final containerHeight = isMobile ? screenHeight * 0.35 : screenHeight * 0.4;

    return Container(
      width: containerSize,
      height: containerHeight,
      child: Image.network(
        'https://ik.imagekit.io/fzng9em8c/Portfolio/person.jpg?updatedAt=1718936236261',
        fit: BoxFit.cover,
      ),
    );
  }
}
