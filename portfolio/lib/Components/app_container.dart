import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class AppContainer extends StatelessWidget {
  final String imagePath;
  final String text;
  final String url;

  AppContainer({
    required this.imagePath,
    required this.text,
    required this.url,
  });

  Future<void> _launchUrl() async {
    if (!await launchUrlString(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = ResponsiveHelper.isMobile(context);

    final imageSize = isMobile ? screenWidth * 0.12 : screenWidth * 0.04;

    final borderRadius = isMobile ? screenWidth * 0.025 : screenWidth * 0.008;

    final fontSize = AppDimensions.getCaptionFontSize(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _launchUrl,
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.network(
                  imagePath,
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: verticalSpacing * 0.6),
              Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
