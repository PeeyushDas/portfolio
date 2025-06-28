import 'package:flutter/material.dart';
import 'package:portfolio/utils/txt_theme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class ImgTextContainer extends StatelessWidget {
  final String imgpath;
  final String text;

  ImgTextContainer({required this.imgpath, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = ResponsiveHelper.isMobile(context);

    final horizontalPadding = AppDimensions.getSmallPadding(context);
    final bodyFontSize = AppDimensions.getBodyFontSize(context);

    final imageSize = isMobile ? screenWidth * 0.08 : screenWidth * 0.03;

    final borderRadius = isMobile ? screenWidth * 0.02 : screenWidth * 0.008;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Image.network(
              imgpath,
              width: imageSize,
              height: imageSize,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                text,
                style: NasaTextStyle(bodyFontSize * 1.25),
              ),
            ),
          ),
          SizedBox(width: AppDimensions.getSmallPadding(context)),
        ],
      ),
    );
  }
}
