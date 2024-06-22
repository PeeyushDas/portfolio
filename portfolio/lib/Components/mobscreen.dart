import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Components/about_app.dart';
import 'package:portfolio/Components/app.dart';
import 'package:portfolio/Components/email_app.dart';
import 'package:portfolio/utils/txt_theme.dart';

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
                  textStyle: NasaTextStyle(
                    30,
                  ),
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
                      Appabout(
                          imagePath:
                              'https://ik.imagekit.io/fzng9em8c/Portfolio/person.jpg?updatedAt=1718936236261',
                          text: 'About'),
                      AppContainer(
                          imagePath:
                              'https://ik.imagekit.io/fzng9em8c/Portfolio/linkedin.jpg?updatedAt=1718936236154',
                          text: 'LinkedIn',
                          url: 'https://www.linkedin.com/in/peeyush-das/'),
                      AppContainer(
                          imagePath:
                              'https://ik.imagekit.io/fzng9em8c/Portfolio/x.png?updatedAt=1718936236392',
                          text: 'X',
                          url: 'https://x.com/senninmoda'),
                      AppContainer(
                          imagePath:
                              'https://ik.imagekit.io/fzng9em8c/Portfolio/resume.jpg?updatedAt=1718936236204',
                          text: 'Resume',
                          url:
                              'https://drive.google.com/file/d/1OxLqcs1r5UFfemapWT_CvmjkEt38KB_6/view')
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AppContainer(
                          imagePath:
                              'https://ik.imagekit.io/fzng9em8c/Portfolio/leetcode.png?updatedAt=1718936235881',
                          text: 'LeetCode',
                          url: 'https://leetcode.com/u/PeeyushDas37/'),
                      AppContainer(
                          imagePath:
                              'https://ik.imagekit.io/fzng9em8c/Portfolio/geeksforgeeks.png?updatedAt=1718936236170',
                          text: 'GfG',
                          url:
                              'https://www.geeksforgeeks.org/user/sagejiraiya37/?utm_source=geeksforgeeks&utm_medium=my_profile&utm_campaign=auth_user'),
                      AppContainer(
                          imagePath:
                              'https://ik.imagekit.io/fzng9em8c/Portfolio/github.png?updatedAt=1718936089854',
                          text: 'GitHub',
                          url: 'https://github.com/PeeyushDas'),
                      AppContainer(
                          imagePath:
                              'https://ik.imagekit.io/fzng9em8c/Portfolio/edu.png?updatedAt=1718936236128',
                          text: 'Education',
                          url: 'https://leetcode.com/u/PeeyushDas37/')
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 24.0),
                      AppEmail(
                          imagePath:
                              'https://ik.imagekit.io/fzng9em8c/Portfolio/email.jpg?updatedAt=1718986922602',
                          text: 'Email',
                          url: 'peeyushdas3.7@gmail.com'),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
