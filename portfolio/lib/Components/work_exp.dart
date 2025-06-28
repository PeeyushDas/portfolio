import 'package:flutter/material.dart';
import 'package:portfolio/Components/exp_dialog_box.dart';
import 'package:portfolio/utils/txt_theme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class WorkExperience extends StatefulWidget {
  @override
  _WorkExperienceState createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  Color _borderColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = ResponsiveHelper.isMobile(context);

    final horizontalPadding = AppDimensions.getMediumPadding(context);
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);
    final titleFontSize = AppDimensions.getHeadingFontSize(context);
    final bodyFontSize = AppDimensions.getBodyFontSize(context);

    final imageSize = isMobile ? screenWidth * 0.12 : screenWidth * 0.04;

    final borderRadius = isMobile ? screenWidth * 0.025 : screenWidth * 0.008;

    final borderWidth = isMobile ? screenWidth * 0.004 : screenWidth * 0.002;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: verticalSpacing),
          Text(
            " Work Experience",
            style: NasaTextStyle(titleFontSize),
          ),
          SizedBox(height: verticalSpacing * 0.6),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Center(child: ExpDialogBox());
                },
              );
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (event) {
                setState(() {
                  _borderColor = Colors.white;
                });
              },
              onExit: (event) {
                setState(() {
                  _borderColor = Colors.transparent;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                padding: EdgeInsets.all(AppDimensions.getSmallPadding(context)),
                decoration: BoxDecoration(
                  color: Color(0xff1E1E1E),
                  borderRadius: BorderRadius.circular(borderRadius),
                  border: Border.all(
                    color: _borderColor,
                    width: borderWidth,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(borderRadius * 0.8),
                      child: Image.network(
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/lesgo_org_logo.jpg?updatedAt=1718937282210',
                        width: imageSize,
                        height: imageSize,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'LesGo',
                          style: NasaTextStyle(bodyFontSize * 1.5),
                        ),
                      ),
                    ),
                    SizedBox(width: AppDimensions.getSmallPadding(context)),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: verticalSpacing * 0.6),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Center(child: ExpDialogBox_1());
                },
              );
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (event) {
                setState(() {
                  _borderColor = Colors.white;
                });
              },
              onExit: (event) {
                setState(() {
                  _borderColor = Colors.transparent;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                padding: EdgeInsets.all(AppDimensions.getSmallPadding(context)),
                decoration: BoxDecoration(
                  color: Color(0xff1E1E1E),
                  borderRadius: BorderRadius.circular(borderRadius),
                  border: Border.all(
                    color: _borderColor,
                    width: borderWidth,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(borderRadius * 0.8),
                      child: Image.network(
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/Screenshot%202025-06-28%20175438.png?updatedAt=1751113553427',
                        width: imageSize,
                        height: imageSize,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'Stethaim',
                          style: NasaTextStyle(bodyFontSize * 1.5),
                        ),
                      ),
                    ),
                    SizedBox(width: AppDimensions.getSmallPadding(context)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
