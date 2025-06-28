import 'package:flutter/material.dart';
import 'package:portfolio/Components/img_text_cont.dart';
import 'package:portfolio/utils/txt_theme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class Frameworks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = ResponsiveHelper.isMobile(context);

    final titleFontSize = AppDimensions.getHeadingFontSize(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);
    final horizontalPadding = AppDimensions.getMediumPadding(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: verticalSpacing * 0.6),
            Text(
              "   Tech I Use",
              style: NasaTextStyle(titleFontSize),
            ),
            SizedBox(height: verticalSpacing * 0.6),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/flut.jpg?updatedAt=1718981844952',
                    text: 'Flutter'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/png-transparent-fastapi-hd-logo-thumbnail.png?updatedAt=1751098102740',
                    text: 'FastApi'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/SQLAlchemy.png?updatedAt=1751099448529',
                    text: 'SQLAlchemy'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/mysql-logo-png-image-11660514413jvwkcjh4av.png?updatedAt=1751099448647',
                    text: 'MySQL'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/postgre.png?updatedAt=1751099448587',
                    text: 'PostgreSQL'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/firebase.png?updatedAt=1718981844909',
                    text: 'Firebase'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/tensorflow.png?updatedAt=1751099448565',
                    text: 'TensorFlow'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/keras.png?updatedAt=1751099448564',
                    text: 'Keras'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/heroku.jpeg?updatedAt=1751099448535',
                    text: 'Heroku'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/docker.png?updatedAt=1751099448538',
                    text: 'Docker'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/bluetooth.png?updatedAt=1751099448391',
                    text: 'BlueTooth Serial'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/autoroute.png?updatedAt=1751099448272',
                    text: 'AutoRoute'),
              ],
            ),
            SizedBox(height: verticalSpacing * 0.3),
          ],
        ),
      ),
    );
  }
}
