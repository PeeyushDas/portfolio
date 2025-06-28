import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Components/about_app.dart';
import 'package:portfolio/Components/app_container.dart';
import 'package:portfolio/Components/education_app.dart';
import 'package:portfolio/Components/email_app.dart';
import 'package:portfolio/Components/exp_dialog_box.dart';
import 'package:portfolio/utils/txt_theme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class MobScreen_2 extends StatefulWidget {
  @override
  _MobScreen_2State createState() => _MobScreen_2State();
}

class _MobScreen_2State extends State<MobScreen_2> {
  bool _showAnimatedText = true;

  void _showWorkExpDialog(String company, Widget dialogBox) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(child: dialogBox);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = ResponsiveHelper.isMobile(context);

    final titleFontSize = isMobile ? screenWidth * 0.08 : screenWidth * 0.025;

    final sectionTitleSize =
        isMobile ? screenWidth * 0.045 : screenWidth * 0.015;

    final padding = AppDimensions.getSmallPadding(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return Stack(
      alignment: Alignment.center,
      children: [
        Visibility(
          visible: _showAnimatedText,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding * 2),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'GREETINGS, SPACE TRAVELER! EXPLORE MY WORK AMONG THE STARS.',
                  textStyle: NasaTextStyle(titleFontSize),
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
          child: SingleChildScrollView(
            padding: EdgeInsets.all(padding),
            child: Column(
              children: [
                SizedBox(height: verticalSpacing * 2),

                // App Icons Section
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
                SizedBox(height: verticalSpacing),

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
                    AppEducation(
                      imagePath:
                          'https://ik.imagekit.io/fzng9em8c/Portfolio/edu.png?updatedAt=1718936236128',
                      text: 'Education',
                    ),
                  ],
                ),
                SizedBox(height: verticalSpacing),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: padding * 3),
                    AppEmail(
                        imagePath:
                            'https://ik.imagekit.io/fzng9em8c/Portfolio/email.jpg?updatedAt=1718986922602',
                        text: 'Email',
                        url: 'peeyushdas3.7@gmail.com'),
                  ],
                ),
                SizedBox(height: verticalSpacing * 2),

                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "WORK EXPERIENCE",
                        style: NasaTextStyle(sectionTitleSize),
                      ),
                      SizedBox(height: verticalSpacing * 0.5),
                      Container(
                        width: screenWidth * 0.3,
                        height: screenWidth * 0.002,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.white,
                              Colors.transparent
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: verticalSpacing),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          WorkExperienceContainer(
                            imagePath:
                                'https://ik.imagekit.io/fzng9em8c/Portfolio/lesgo_org_logo.jpg?updatedAt=1718937282210',
                            text: 'LesGo',
                            onTap: () =>
                                _showWorkExpDialog('LesGo', ExpDialogBox()),
                          ),
                          WorkExperienceContainer(
                            imagePath:
                                'https://ik.imagekit.io/fzng9em8c/Portfolio/Screenshot%202025-06-28%20175438.png?updatedAt=1751113553427',
                            text: 'Stethaim',
                            onTap: () => _showWorkExpDialog(
                                'Stethaim', ExpDialogBox_1()),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: verticalSpacing * 4.5),

                // Programming Languages Section
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "PROGRAMMING LANGUAGES",
                        style: NasaTextStyle(sectionTitleSize),
                      ),
                      SizedBox(height: verticalSpacing * 0.5),
                      Container(
                        width: screenWidth * 0.3,
                        height: screenWidth * 0.002,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.white,
                              Colors.transparent
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: verticalSpacing),
                      GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        mainAxisSpacing: verticalSpacing * 0.75,
                        crossAxisSpacing:
                            AppDimensions.getHorizontalSpacing(context) * 0.5,
                        childAspectRatio: 1.0,
                        children: [
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/javaprog.png?updatedAt=1718981844904',
                              text: 'Java'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/python.png?updatedAt=1751114074537',
                              text: 'Python'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/sql.png?updatedAt=1751114053555',
                              text: 'SQL'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/c++prog.png?updatedAt=1718981844909',
                              text: 'C'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/dart.png?updatedAt=1718981844948',
                              text: 'Dart'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: verticalSpacing * 2),

                // Tech I Use Section
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "TECH I USE",
                        style: NasaTextStyle(sectionTitleSize),
                      ),
                      SizedBox(height: verticalSpacing * 0.5),
                      Container(
                        width: screenWidth * 0.3,
                        height: screenWidth * 0.002,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.white,
                              Colors.transparent
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: verticalSpacing),
                      GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        mainAxisSpacing: verticalSpacing * 0.75,
                        crossAxisSpacing:
                            AppDimensions.getHorizontalSpacing(context) * 0.5,
                        childAspectRatio: 1.0,
                        children: [
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/flut.jpg?updatedAt=1718981844952',
                              text: 'Flutter'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/png-transparent-fastapi-hd-logo-thumbnail.png?updatedAt=1751098102740',
                              text: 'FastApi'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/SQLAlchemy.png?updatedAt=1751099448529',
                              text: 'SQLAlchemy'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/mysql-logo-png-image-11660514413jvwkcjh4av.png?updatedAt=1751099448647',
                              text: 'MySQL'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/postgre.png?updatedAt=1751099448587',
                              text: 'PostgreSQL'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/firebase.png?updatedAt=1718981844909',
                              text: 'Firebase'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/tensorflow.png?updatedAt=1751099448565',
                              text: 'TensorFlow'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/keras.png?updatedAt=1751099448564',
                              text: 'Keras'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/heroku.jpeg?updatedAt=1751099448535',
                              text: 'Heroku'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/docker.png?updatedAt=1751099448538',
                              text: 'Docker'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/bluetooth.png?updatedAt=1751099448391',
                              text: 'BlueTooth'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/autoroute.png?updatedAt=1751099448272',
                              text: 'AutoRoute'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: verticalSpacing * 2),

                // Development Tools Section
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "DEVELOPMENT TOOLS",
                        style: NasaTextStyle(sectionTitleSize),
                      ),
                      SizedBox(height: verticalSpacing * 0.5),
                      Container(
                        width: screenWidth * 0.3,
                        height: screenWidth * 0.002,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.white,
                              Colors.transparent
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: verticalSpacing),
                      GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        mainAxisSpacing: verticalSpacing * 0.75,
                        crossAxisSpacing:
                            AppDimensions.getHorizontalSpacing(context) * 0.5,
                        childAspectRatio: 1.0,
                        children: [
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/as.png?updatedAt=1751113031108',
                              text: 'Android Studio'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/vs.png?updatedAt=1751113031414',
                              text: 'VS Code'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/git.png?updatedAt=1718981820214',
                              text: 'Git'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/github.png?updatedAt=1718936089854',
                              text: 'GitHub'),
                          SkillContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/postman.png?updatedAt=1751113031452',
                              text: 'Postman'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: verticalSpacing * 2),

                // Work Experience Section

                SizedBox(height: verticalSpacing * 2),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SkillContainer extends StatelessWidget {
  final String imagePath;
  final String text;

  SkillContainer({
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = ResponsiveHelper.isMobile(context);

    final imageSize = isMobile ? screenWidth * 0.08 : screenWidth * 0.03;

    final borderRadius = isMobile ? screenWidth * 0.02 : screenWidth * 0.006;

    final fontSize = AppDimensions.getCaptionFontSize(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);
    final padding = AppDimensions.getSmallPadding(context);

    return Container(
      padding: EdgeInsets.all(padding * 0.75),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: Colors.white.withOpacity(0.2),
          width: screenWidth * 0.002,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius * 0.8),
            child: Image.network(
              imagePath,
              width: imageSize,
              height: imageSize,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: verticalSpacing * 0.3),
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize * 0.8,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class WorkExperienceContainer extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onTap;

  WorkExperienceContainer({
    required this.imagePath,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = ResponsiveHelper.isMobile(context);

    final imageSize = isMobile ? screenWidth * 0.12 : screenWidth * 0.04;

    final borderRadius = isMobile ? screenWidth * 0.025 : screenWidth * 0.008;

    final fontSize = AppDimensions.getCaptionFontSize(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);
    final padding = AppDimensions.getSmallPadding(context);

    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
              width: screenWidth * 0.002,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius * 0.8),
                child: Image.network(
                  imagePath,
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: verticalSpacing * 0.4),
              Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobScreen extends StatefulWidget {
  @override
  _MobScreenState createState() => _MobScreenState();
}

class _MobScreenState extends State<MobScreen> {
  bool _showAnimatedText = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = ResponsiveHelper.isMobile(context);

    final titleFontSize = isMobile ? screenWidth * 0.08 : screenWidth * 0.025;

    final sectionTitleSize =
        isMobile ? screenWidth * 0.045 : screenWidth * 0.015;

    final padding = AppDimensions.getSmallPadding(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return Stack(
      alignment: Alignment.center,
      children: [
        Visibility(
          visible: _showAnimatedText,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding * 2),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'GREETINGS, SPACE TRAVELER! EXPLORE MY WORK AMONG THE STARS.',
                  textStyle: NasaTextStyle(titleFontSize),
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
          child: SingleChildScrollView(
            padding: EdgeInsets.all(padding),
            child: Column(
              children: [
                SizedBox(height: verticalSpacing * 2),

                // App Icons Section
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
                SizedBox(height: verticalSpacing),

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
                    AppEducation(
                      imagePath:
                          'https://ik.imagekit.io/fzng9em8c/Portfolio/edu.png?updatedAt=1718936236128',
                      text: 'Education',
                    ),
                  ],
                ),
                SizedBox(height: verticalSpacing),

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
                SizedBox(height: verticalSpacing * 2),

                // Projects Section
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "PROJECTS",
                        style: NasaTextStyle(sectionTitleSize),
                      ),
                      SizedBox(height: verticalSpacing * 0.5),
                      Container(
                        width: screenWidth * 0.3,
                        height: screenWidth * 0.002,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.white,
                              Colors.transparent
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: verticalSpacing),

                      // Project Grid
                      GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        mainAxisSpacing: verticalSpacing * 0.75,
                        crossAxisSpacing:
                            AppDimensions.getHorizontalSpacing(context) * 0.75,
                        childAspectRatio: 1.2,
                        children: [
                          AppContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/launcher_icon.png?updatedAt=1751119433518',
                              text: 'CropCure AI',
                              url:
                                  'https://drive.google.com/file/d/1YYexKX5H002ELyR26wMslDFNs6rz1pGP/view?usp=sharing'),
                          AppContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/WhatsApp%20Image%202025-05-27%20at%2013.00.17_6836ffb1.jpg?updatedAt=1751120268160',
                              text: 'Stethaim',
                              url:
                                  'https://drive.google.com/file/d/1XnJj09Io7JrHNRF9WBRxcaVUQigXeHrk/view?usp=sharing'),
                          AppContainer(
                              imagePath:
                                  'https://ik.imagekit.io/fzng9em8c/Portfolio/lesgo_org_logo.jpg?updatedAt=1718937282210',
                              text: 'Lesgo',
                              url:
                                  'https://drive.google.com/file/d/1kDKWShmwAFBpJSrmaHbm3XO6eQHixjCO/view?usp=sharing'),
                          AppContainer(
                            imagePath:
                                'https://ik.imagekit.io/fzng9em8c/Portfolio/otc.png?updatedAt=1751120268312',
                            text: 'OTC Trading Bot',
                            url:
                                'https://drive.google.com/file/d/1mbqHn8FTzDTpTtjR7IT5N9lcVhpe0uA2/view?usp=sharing',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: verticalSpacing * 2),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
