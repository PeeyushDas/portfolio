import 'package:flutter/material.dart';
import 'package:portfolio/utils/txt_theme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class AboutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = ResponsiveHelper.isMobile(context);

    final containerWidth = isMobile ? screenWidth * 0.95 : screenWidth * 0.85;

    final containerHeight = isMobile ? screenHeight * 0.8 : screenHeight * 0.75;

    final padding = AppDimensions.getMediumPadding(context);
    final margin = AppDimensions.getLargePadding(context);

    final borderRadius = isMobile ? screenWidth * 0.05 : screenWidth * 0.015;

    final borderWidth = isMobile ? screenWidth * 0.001 : screenWidth * 0.0004;

    final titleFontSize = isMobile ? screenWidth * 0.06 : screenWidth * 0.018;

    final bodyFontSize = isMobile ? screenWidth * 0.04 : screenWidth * 0.015;

    final imageSize = isMobile ? screenWidth * 0.6 : screenWidth * 0.25;

    final spacing = AppDimensions.getHorizontalSpacing(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return Center(
      child: SizedBox(
        width: containerWidth,
        height: containerHeight,
        child: Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: Color(0xFF0F1624).withOpacity(0.6),
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: Colors.white,
              width: borderWidth,
            ),
          ),
          child: isMobile
              ? _buildMobileLayout(context)
              : _buildLaptopLayout(context),
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final margin = AppDimensions.getMediumPadding(context);
    final borderRadius = screenWidth * 0.05;
    final borderWidth = screenWidth * 0.004;
    final imageSize = screenWidth * 0.6;
    final titleFontSize = screenWidth * 0.06;
    final bodyFontSize = screenWidth * 0.04;
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(margin),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(
                color: Colors.white.withOpacity(0.5),
                width: borderWidth,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  spreadRadius: screenWidth * 0.01,
                  blurRadius: screenWidth * 0.015,
                  offset: Offset(0, screenWidth * 0.008),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image.network(
                'https://ik.imagekit.io/fzng9em8c/Portfolio/WhatsApp%20Image%202024-06-22%20at%2021.56.13.jpeg.crdownload?updatedAt=1719074411689',
                width: imageSize,
                height: imageSize,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: verticalSpacing),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Peeyush Das',
                style: NasaTextStyle(titleFontSize),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: verticalSpacing * 0.5),
              Text(
                'Hello, I am a Flutter Developer with a passion for creating beautiful and functional user interfaces. Currently, I am pursuing Bachelor of Technology at National Institute of Technology, Rourkela. I have experience in developing mobile applications using Flutter and Dart. I am a quick learner and is always eager to learn new technologies and frameworks. I am currently looking for opportunities to work on exciting projects and contribute to the success of the team. I am open to remote and positions.',
                style: NasaTextStyle(bodyFontSize),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLaptopLayout(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final margin = AppDimensions.getLargePadding(context);
    final borderRadius = screenWidth * 0.015;
    final borderWidth = screenWidth * 0.002;
    final imageSize = screenWidth * 0.25;
    final titleFontSize = screenWidth * 0.018;
    final bodyFontSize = screenWidth * 0.015;
    final spacing = AppDimensions.getHorizontalSpacing(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(margin),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: Colors.white.withOpacity(0.5),
              width: borderWidth,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: screenWidth * 0.004,
                blurRadius: screenWidth * 0.005,
                offset: Offset(0, screenWidth * 0.002),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Image.network(
              'https://ik.imagekit.io/fzng9em8c/Portfolio/WhatsApp%20Image%202024-06-22%20at%2021.56.13.jpeg.crdownload?updatedAt=1719074411689',
              width: imageSize,
              height: imageSize,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: spacing * 2),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Peeyush Das',
                style: NasaTextStyle(titleFontSize),
              ),
              SizedBox(height: verticalSpacing * 0.5),
              Text(
                'Hello, I am a Flutter Developer with a passion for creating beautiful and functional user interfaces. Currently, I am pursuing Bachelor of Technology at National Institute of Technology, Rourkela. I have experience in developing mobile applications using Flutter and Dart. I am a quick learner and is always eager to learn new technologies and frameworks. I am currently looking for opportunities to work on exciting projects and contribute to the success of the team. I am open to remote and positions.',
                style: NasaTextStyle(bodyFontSize),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
