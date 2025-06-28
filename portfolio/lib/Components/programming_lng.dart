import 'package:flutter/material.dart';
import 'package:portfolio/Components/img_text_cont.dart';
import 'package:portfolio/utils/txt_theme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class ProgrammingLanguageComponent extends StatelessWidget {
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: verticalSpacing * 0.6),
          Text(
            "   Programming Languages",
            style: NasaTextStyle(titleFontSize * 0.65),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/javaprog.png?updatedAt=1718981844904',
                    text: 'Java '),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/python.png?updatedAt=1751114074537',
                    text: 'Python'),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/sql.png?updatedAt=1751114053555',
                    text: 'SQL'),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/c++prog.png?updatedAt=1718981844909',
                    text: 'C '),
                ImgTextContainer(
                    imgpath:
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/dart.png?updatedAt=1718981844948',
                    text: 'Dart '),
              ],
            ),
          ),
          SizedBox(height: verticalSpacing * 0.3),
        ],
      ),
    );
  }
}
