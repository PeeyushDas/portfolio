import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/utils/txt_theme.dart';

class AboutText extends StatefulWidget {
  @override
  _AboutTextState createState() => _AboutTextState();
}

class _AboutTextState extends State<AboutText> {
  Future<void> _delayedFuture = Future.delayed(Duration(seconds: 10));

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _delayedFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Hey there! \n Welcome to my portfolio. \nI am Peeyush Das. \nI am a Flutter Developer.\n Hire me please, as I need to pay my semester fees \n :)',
                    textStyle: NasaTextStyle(
                      16,
                    ),
                    textAlign: TextAlign.center,
                    speed: const Duration(milliseconds: 150),
                  ),
                ],
                totalRepeatCount: 1,
                pause: Duration(milliseconds: 1000),
              ),
            ),
          );
        } else {
          return Container(
            child: Center(
                child: Text('LOOK WE HAVE A VISITOR!!!',
                    style: NasaTextStyle(16))),
          ); // Empty container for the first 10 seconds
        }
      },
    );
  }
}
