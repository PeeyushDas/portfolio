import 'package:flutter/material.dart';
import 'package:portfolio/Components/img_text_cont.dart';
import 'package:portfolio/utils/txt_theme.dart';

class ProgrammingLanguageComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15.0),
        Text(
          "   Programming Languages",
          style: NasaTextStyle(
            20,
          ),
        ),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/Qb64.png?updatedAt=1718937306622',
            text: 'Q Basic Programming'),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/cprog.png?updatedAt=1718937306709',
            text: 'C Programming    '),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/c++prog.png?updatedAt=1718937306657',
            text: 'C++ Programming'),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/javaprog.png?updatedAt=1718937306708',
            text: 'Java Programming'),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/dart.png?updatedAt=1718937306743',
            text: 'Dart Programming'),
      ],
    );
  }
}
