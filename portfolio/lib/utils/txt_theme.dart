// styles.dart

import 'package:flutter/material.dart';

TextStyle NasaTextStyle(double fontSize, {Color? color}) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: color ?? Colors.white,
      fontFamily: 'nasalization');
}
