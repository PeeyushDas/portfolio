import 'package:flutter/material.dart';
import 'package:portfolio/Components/img_text_cont.dart';
import 'package:portfolio/utils/txt_theme.dart';

class tools_package extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.0),
        Text(
          "   Packages",
          style: NasaTextStyle(
            20,
          ),
        ),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/flut.jpg?updatedAt=1718981844952',
            text: 'Provider'),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/bloc.png?updatedAt=1718937282236',
            text: 'Bloc'),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/cubit.png?updatedAt=1718937266851',
            text: 'Cubit'),
        ImgTextContainer(
            imgpath:
                'https://ik.imagekit.io/fzng9em8c/Portfolio/rvrpod.png?updatedAt=1718937282299',
            text: 'Riverpod'),
        SizedBox(height: 5.0)
      ],
    );
  }
}
