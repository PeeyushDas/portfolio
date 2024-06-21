import 'package:flutter/material.dart';
import 'package:portfolio/utils/txt_theme.dart';

class ImgTextContainer extends StatelessWidget {
  final String imgpath;
  final String text;

  ImgTextContainer({required this.imgpath, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imgpath,
              width: 40,
              height: 40,
            ),
          ),
          Text(text, style: NasaTextStyle(16.0)),
          SizedBox(
            width: 1,
          )
        ],
      ),
    );
  }
}
