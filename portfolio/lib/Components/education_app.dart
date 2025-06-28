import 'package:flutter/material.dart';
import 'package:portfolio/Components/education_container.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class AppEducation extends StatelessWidget {
  final String imagePath;
  final String text;

  AppEducation({required this.imagePath, required this.text});

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return EducationContainer();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = ResponsiveHelper.isMobile(context);

    final imageSize = isMobile ? screenWidth * 0.12 : screenWidth * 0.04;

    final borderRadius = isMobile ? screenWidth * 0.025 : screenWidth * 0.008;

    final fontSize = AppDimensions.getCaptionFontSize(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return GestureDetector(
      onTap: () => _showDialog(context),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.network(
                  imagePath,
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: verticalSpacing * 0.6),
              Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
