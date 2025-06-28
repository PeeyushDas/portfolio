import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/Screens/home_page.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          final screenWidth = MediaQuery.of(context).size.width;
          final screenHeight = MediaQuery.of(context).size.height;
          final isMobile = ResponsiveHelper.isMobile(context);

          final lottieSize = isMobile ? screenWidth * 0.6 : screenWidth * 0.6;

          return AnimatedSplashScreen(
            splash: SizedBox(
              width: lottieSize,
              height: lottieSize,
              child: Lottie.asset(
                'animation/rocket_lottie.json',
                fit: BoxFit.contain,
              ),
            ),
            nextScreen: HomePage(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Color(0xff082c2c),
            duration: isMobile ? 4000 : 5000,
          );
        },
      ),
    );
  }
}
