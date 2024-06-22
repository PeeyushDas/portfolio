import 'package:flutter/material.dart';
import 'package:portfolio/Components/img_text_cont.dart';
import 'package:portfolio/utils/txt_theme.dart';

class Frameworks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.0),
        Text(
          "   Tech Stacks",
          style: NasaTextStyle(
            20,
          ),
        ),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/flut.jpg?updatedAt=1718981844952',
            text: 'Flutter'),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/git.png?updatedAt=1718981820214',
            text: 'Git'),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/github.png?updatedAt=1718936089854',
            text: 'GitHub'),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/firebase.png?updatedAt=1718981844909',
            text: 'Firebase'),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/flame.png?updatedAt=1718983355331',
            text: 'Flame'),
        SizedBox(height: 5.0)
      ],
    );
  }
}
