import 'package:flutter/material.dart';

class AppDimensions {
  static const double mobileBreakpoint = 600;

  // Responsive padding based on screen size
  static double getSmallPadding(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return _isMobile(context) ? screenWidth * 0.01 : screenWidth * 0.006;
  }

  static double getMediumPadding(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return _isMobile(context) ? screenWidth * 0.02 : screenWidth * 0.012;
  }

  static double getLargePadding(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return _isMobile(context) ? screenWidth * 0.04 : screenWidth * 0.018;
  }

  // Responsive font sizes
  static double getHeadingFontSize(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return _isMobile(context) ? screenWidth * 0.05 : screenWidth * 0.02;
  }

  static double getBodyFontSize(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return _isMobile(context) ? screenWidth * 0.035 : screenWidth * 0.012;
  }

  static double getCaptionFontSize(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return _isMobile(context) ? screenWidth * 0.03 : screenWidth * 0.01;
  }

  // Responsive container dimensions
  static double getCardHeight(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return _isMobile(context) ? screenHeight * 0.15 : screenHeight * 0.18;
  }

  static double getButtonHeight(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return _isMobile(context) ? screenHeight * 0.05 : screenHeight * 0.06;
  }

  // Responsive spacing between elements
  static double getVerticalSpacing(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return _isMobile(context) ? screenHeight * 0.015 : screenHeight * 0.025;
  }

  static double getHorizontalSpacing(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return _isMobile(context) ? screenWidth * 0.03 : screenWidth * 0.015;
  }

  // Helper method to check if mobile
  static bool _isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < mobileBreakpoint;
  }

  // Screen width percentages for responsive layouts
  static double getScreenWidthPercentage(
      BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * percentage;
  }

  // Maximum content width for laptop screens
  static double getMaxContentWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return _isMobile(context) ? screenWidth * 0.95 : screenWidth * 0.85;
  }
}
