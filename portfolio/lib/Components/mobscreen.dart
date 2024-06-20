import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Components/app.dart';

class MobScreen extends StatefulWidget {
  @override
  _MobScreenState createState() => _MobScreenState();
}

class _MobScreenState extends State<MobScreen> {
  bool _showAnimatedText = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Visibility(
          visible: _showAnimatedText,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'GREETINGS, SPACE TRAVELER! EXPLORE MY WORK AMONG THE STARS.',
                  textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Color(0xffD3D3D3),
                      fontFamily: 'nasalization'),
                  speed: const Duration(milliseconds: 150),
                ),
              ],
              onFinished: () {
                setState(() {
                  _showAnimatedText = false;
                });
              },
              totalRepeatCount: 1,
              pause: Duration(milliseconds: 1000),
            ),
          ),
        ),
        Visibility(
            visible: !_showAnimatedText,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AppContainer(
                          imagePath: 'https://i.imgur.com/Bvoqh4m.jpeg',
                          text: 'About'),
                      AppContainer(
                          imagePath: 'https://i.imgur.com/kodeRl8.jpeg',
                          text: 'LinkedIn'),
                      AppContainer(
                          imagePath: 'https://i.imgur.com/eiGssFR.png',
                          text: 'X'),
                      AppContainer(
                          imagePath: 'https://i.imgur.com/ehFbuZ9.jpeg',
                          text: 'Resume')
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AppContainer(
                          imagePath: 'https://i.imgur.com/xpZy0VO.png',
                          text: 'LeetCode'),
                      AppContainer(
                          imagePath: 'https://i.imgur.com/Uo9UAyV.png',
                          text: 'GfG'),
                      AppContainer(
                          imagePath: 'https://i.imgur.com/3aEdSkE.png',
                          text: 'GitHub'),
                      AppContainer(
                          imagePath: 'https://i.imgur.com/ZtGt98X.png',
                          text: 'Education')
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
