import 'package:flutter/material.dart';
import 'package:portfolio/utils/txt_theme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class ExpDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = ResponsiveHelper.isMobile(context);

    final dialogWidth = isMobile ? screenWidth * 0.9 : screenWidth * 0.5;

    final dialogHeight = isMobile ? screenHeight * 0.7 : screenHeight * 0.6;

    final padding = AppDimensions.getMediumPadding(context);
    final borderRadius = isMobile ? screenWidth * 0.02 : screenWidth * 0.006;

    final borderWidth = isMobile ? screenWidth * 0.001 : screenWidth * 0.0004;

    final imageSize = isMobile ? screenWidth * 0.12 : screenWidth * 0.04;

    final titleFontSize = AppDimensions.getHeadingFontSize(context);
    final bodyFontSize = AppDimensions.getBodyFontSize(context);
    final captionFontSize = AppDimensions.getCaptionFontSize(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return Container(
      padding: EdgeInsets.all(padding),
      width: dialogWidth,
      height: dialogHeight,
      decoration: BoxDecoration(
        color: Color(0xFF0F1624).withOpacity(0.6),
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: Colors.white,
          width: borderWidth,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadius * 0.8),
                  child: Image.network(
                    'https://ik.imagekit.io/fzng9em8c/Portfolio/lesgo_org_logo.jpg?updatedAt=1718937282210',
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: AppDimensions.getSmallPadding(context)),
                Text(
                  'LesGo',
                  style: NasaTextStyle(titleFontSize),
                ),
              ],
            ),
            SizedBox(height: verticalSpacing * 0.5),
            Divider(
              color: Colors.white,
              thickness: borderWidth,
            ),
            SizedBox(height: verticalSpacing * 0.5),
            Text(
              'Flutter Developer [Intern]',
              style: NasaTextStyle(titleFontSize),
            ),
            SizedBox(height: verticalSpacing * 0.5),
            Text(
              'Period: December 2023 - February 2024',
              style: NasaTextStyle(
                captionFontSize,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: verticalSpacing * 0.3),
            Text(
              'Location: Bengaluru, Karnataka, India · Remote',
              style: NasaTextStyle(
                captionFontSize,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: verticalSpacing),
            Text(
              'Description:',
              style: NasaTextStyle(bodyFontSize),
            ),
            SizedBox(height: verticalSpacing * 0.5),
            BulletPoint(
              text:
                  'Developed and implemented over 15 screens for the LesGo mobile application using the Flutter framework.',
            ),
            BulletPoint(
              text: 'Designed and developed various components.',
            ),
            BulletPoint(
              text: 'Implemented API integration into the application.',
            ),
            SizedBox(height: verticalSpacing),
            Text(
              'Skills: App Development, API Integration, Designing Components, State Management',
              style: NasaTextStyle(
                captionFontSize,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    final bodyFontSize = AppDimensions.getBodyFontSize(context);
    final captionFontSize = AppDimensions.getCaptionFontSize(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return Padding(
      padding: EdgeInsets.only(bottom: verticalSpacing * 0.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '➤',
            style: NasaTextStyle(bodyFontSize),
          ),
          SizedBox(width: AppDimensions.getSmallPadding(context)),
          Expanded(
            child: Text(
              text,
              style: NasaTextStyle(
                captionFontSize,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExpDialogBox_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = ResponsiveHelper.isMobile(context);

    final dialogWidth = isMobile ? screenWidth * 0.9 : screenWidth * 0.5;

    final dialogHeight = isMobile ? screenHeight * 0.7 : screenHeight * 0.6;

    final padding = AppDimensions.getMediumPadding(context);
    final borderRadius = isMobile ? screenWidth * 0.02 : screenWidth * 0.006;

    final borderWidth = isMobile ? screenWidth * 0.001 : screenWidth * 0.0004;

    final imageSize = isMobile ? screenWidth * 0.12 : screenWidth * 0.04;

    final titleFontSize = AppDimensions.getHeadingFontSize(context);
    final bodyFontSize = AppDimensions.getBodyFontSize(context);
    final captionFontSize = AppDimensions.getCaptionFontSize(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return Container(
      padding: EdgeInsets.all(padding),
      width: dialogWidth,
      height: dialogHeight,
      decoration: BoxDecoration(
        color: Color(0xFF0F1624).withOpacity(0.6),
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: Colors.white,
          width: borderWidth,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadius * 0.8),
                  child: Image.network(
                    'https://ik.imagekit.io/fzng9em8c/Portfolio/Screenshot%202025-06-28%20175438.png?updatedAt=1751113553427',
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: AppDimensions.getSmallPadding(context)),
                Text(
                  'Stethaim',
                  style: NasaTextStyle(titleFontSize),
                ),
              ],
            ),
            SizedBox(height: verticalSpacing * 0.5),
            Divider(
              color: Colors.white,
              thickness: borderWidth,
            ),
            SizedBox(height: verticalSpacing * 0.5),
            Text(
              'Software Engineer Intern',
              style: NasaTextStyle(titleFontSize),
            ),
            SizedBox(height: verticalSpacing * 0.5),
            Text(
              'Period: May 2025 -  July 2025',
              style: NasaTextStyle(
                captionFontSize,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: verticalSpacing * 0.3),
            Text(
              'Location: Rourkela, Odisha, India · Remote',
              style: NasaTextStyle(
                captionFontSize,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: verticalSpacing),
            Text(
              'Description:',
              style: NasaTextStyle(bodyFontSize),
            ),
            SizedBox(height: verticalSpacing * 0.5),
            BulletPoint(
              text:
                  'Programmed ESP32 microcontroller for hardware integration, enabling seamless communication between the medical device and mobile application for data collection and transmission.',
            ),
            BulletPoint(
              text:
                  'Developed a Flutter-based medical diagnostic app with Auto_Router navigation, patient management, and real-time lung scanning with interactive anatomical visualizations. ',
            ),
            BulletPoint(
              text:
                  'Built complete patient workflow system including OTP authentication, patient registration, scanning interface with countdown timers, and downloadable medical reports.',
            ),
            SizedBox(height: verticalSpacing),
            Text(
              'Skills: App Development, Arduino, Bluetooth Encoding, State Management',
              style: NasaTextStyle(
                captionFontSize,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
