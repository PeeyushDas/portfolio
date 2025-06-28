import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/utils/txt_theme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class AboutText extends StatefulWidget {
  @override
  _AboutTextState createState() => _AboutTextState();
}

class _AboutTextState extends State<AboutText> {
  late Future<void> _delayedFuture;

  @override
  void initState() {
    super.initState();
    _delayedFuture = Future.delayed(Duration(seconds: 10));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = ResponsiveHelper.isMobile(context);

    final padding = AppDimensions.getSmallPadding(context);
    final bodyFontSize = AppDimensions.getBodyFontSize(context);

    final animationSpeed =
        isMobile ? Duration(milliseconds: 120) : Duration(milliseconds: 150);

    return FutureBuilder(
      future: _delayedFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: EdgeInsets.all(padding),
            child: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Hey there! \n Welcome to my portfolio. \nI am Peeyush Das. \n🧩 Builder of intelligent systems, breaker of silos. From models to middleware — I like making things that make sense. :)',
                    textStyle: NasaTextStyle(bodyFontSize * 1.25),
                    textAlign: TextAlign.center,
                    speed: animationSpeed,
                  ),
                ],
                totalRepeatCount: 1,
                pause: Duration(milliseconds: 1000),
              ),
            ),
          );
        } else {
          return Container(
            padding: EdgeInsets.all(padding),
            child: Center(
              child: Text(
                'LOOK WE HAVE A VISITOR!!! \n ^_^ \n',
                style: NasaTextStyle(bodyFontSize),
                textAlign: TextAlign.center,
              ),
            ),
          );
        }
      },
    );
  }
}
