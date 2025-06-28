import 'package:flutter/material.dart';
import 'package:portfolio/Components/img_text_cont.dart';
import 'package:portfolio/utils/txt_theme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class tools_package extends StatelessWidget {
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
              "   Development Tools & Environment",
              style: NasaTextStyle(titleFontSize * 0.65),
            ),
            SizedBox(height: verticalSpacing * 0.6),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/as.png?updatedAt=1751113031108',
                    text: 'Android Studio'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/vs.png?updatedAt=1751113031414',
                    text: 'VS Code'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/git.png?updatedAt=1718981820214',
                    text: 'Git'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/github.png?updatedAt=1718936089854',
                    text: 'GitHub'),
                SizedBox(height: verticalSpacing * 0.3),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/postman.png?updatedAt=1751113031452',
                    text: 'Postman'),
              ],
            ),
            SizedBox(height: verticalSpacing * 0.3),
          ],
        ),
      ),
    );
  }
}
