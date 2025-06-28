import 'package:flutter/material.dart';

enum ScreenSize { mobile, laptop }

class ResponsiveHelper {
  static ScreenSize getScreenSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width < 600 ? ScreenSize.mobile : ScreenSize.laptop;
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isLaptop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
}
