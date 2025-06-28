import 'package:flutter/material.dart';
import 'package:portfolio/utils/txt_theme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class EducationContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = ResponsiveHelper.isMobile(context);

    final containerWidth = isMobile ? screenWidth * 0.95 : screenWidth * 0.75;

    final containerHeight = isMobile ? screenHeight * 0.85 : screenHeight * 0.8;

    final padding = AppDimensions.getLargePadding(context);

    final borderRadius = isMobile ? screenWidth * 0.05 : screenWidth * 0.015;

    final borderWidth = isMobile ? screenWidth * 0.001 : screenWidth * 0.0004;

    final titleFontSize = isMobile ? screenWidth * 0.07 : screenWidth * 0.02;

    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return Center(
      child: SizedBox(
        width: containerWidth,
        height: containerHeight,
        child: Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: Color(0xFF0F1624).withOpacity(0.6),
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: Colors.white,
              width: borderWidth,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'EDUCATIONAL JOURNEY',
                style: NasaTextStyle(titleFontSize),
              ),
              SizedBox(height: verticalSpacing * 0.5),
              Container(
                width: isMobile ? screenWidth * 0.5 : screenWidth * 0.15,
                height: isMobile ? screenWidth * 0.005 : screenWidth * 0.0015,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.white,
                      Colors.transparent
                    ],
                  ),
                ),
              ),
              SizedBox(height: verticalSpacing * 2),
              Expanded(
                child: SingleChildScrollView(
                  child: isMobile
                      ? _buildMobileLayout(context)
                      : _buildLaptopLayout(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return Column(
      children: [
        EducationItem(
          year: '2022 - 2026',
          degree: 'Bachelor of Technology',
          institution: 'National Institute of Technology, Rourkela',
          specialization: 'Computer Science & Engineering',
          grade: 'CGPA: 8.85/10',
          isActive: true,
          achievements: [
            'Core member of Google Developer Group',
            'Organized India\'s largest student-run hackathon',
            'Involved in organizing multiple tech events and sessions',
          ],
        ),
        SizedBox(height: verticalSpacing * 2),
        EducationItem(
          year: '2019 - 2021',
          degree: 'Higher Secondary Education',
          institution: 'DAV Public School',
          specialization: 'Science (PCMB)',
          grade: 'Percentage: 91.6%',
          isActive: false,
          achievements: [
            'Secured highest marks in batch',
            'Participated in National Science Olympiad',
          ],
        ),
        SizedBox(height: verticalSpacing * 2),
        EducationItem(
          year: '2007 - 2019',
          degree: 'Secondary Education',
          institution: 'DAV Public School',
          specialization: 'All Subjects',
          grade: 'Percentage: 92.5%',
          isActive: false,
          achievements: [
            'House Captain',
            'Won inter-school coding competition',
            'Participated in various cultural events',
            'Part of School\'s music band',
          ],
        ),
        SizedBox(height: verticalSpacing * 2),
      ],
    );
  }

  Widget _buildLaptopLayout(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenWidth * 0.003,
          height: screenHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.8),
                Colors.blue.withOpacity(0.6),
                Colors.purple.withOpacity(0.4),
              ],
            ),
            borderRadius: BorderRadius.circular(screenWidth * 0.0015),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.3),
                spreadRadius: screenWidth * 0.0008,
                blurRadius: screenWidth * 0.002,
              ),
            ],
          ),
        ),
        SizedBox(width: AppDimensions.getHorizontalSpacing(context)),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EducationItem(
                year: '2022 - 2026',
                degree: 'Bachelor of Technology',
                institution: 'National Institute of Technology, Rourkela',
                specialization: 'Computer Science & Engineering',
                grade: 'CGPA: 8.85/10',
                isActive: true,
                achievements: [
                  'Core member of Google Developer Group',
                  'Organized India\'s largest student-run hackathon',
                  'Involved in organizing multiple tech events and sessions',
                ],
              ),
              SizedBox(height: verticalSpacing * 2),
              EducationItem(
                year: '2019 - 2021',
                degree: 'Higher Secondary Education',
                institution: 'DAV Public School',
                specialization: 'Science (PCMB)',
                grade: 'Percentage: 91.6%',
                isActive: false,
                achievements: [
                  'Secured highest marks in batch',
                  'Participated in National Science Olympiad',
                ],
              ),
              SizedBox(height: verticalSpacing * 2),
              EducationItem(
                year: '2007 - 2019',
                degree: 'Secondary Education',
                institution: 'DAV Public School',
                specialization: 'All Subjects',
                grade: 'Percentage: 92.5%',
                isActive: false,
                achievements: [
                  'House Captain',
                  'Won inter-school coding competition',
                  'Participated in various cultural events',
                  'Part of School\'s music band',
                ],
              ),
              SizedBox(height: verticalSpacing * 2),
            ],
          ),
        ),
      ],
    );
  }
}

class EducationItem extends StatelessWidget {
  final String year;
  final String degree;
  final String institution;
  final String specialization;
  final String grade;
  final bool isActive;
  final List<String> achievements;

  EducationItem({
    required this.year,
    required this.degree,
    required this.institution,
    required this.specialization,
    required this.grade,
    required this.isActive,
    required this.achievements,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = ResponsiveHelper.isMobile(context);

    final nodeSize = isMobile ? screenWidth * 0.05 : screenWidth * 0.015;

    final borderWidth = isMobile ? screenWidth * 0.008 : screenWidth * 0.002;

    final padding = AppDimensions.getMediumPadding(context);
    final borderRadius = isMobile ? screenWidth * 0.03 : screenWidth * 0.009;

    final yearFontSize = AppDimensions.getCaptionFontSize(context);
    final titleFontSize = AppDimensions.getBodyFontSize(context);
    final bodyFontSize = isMobile ? screenWidth * 0.032 : screenWidth * 0.01;
    final captionFontSize =
        isMobile ? screenWidth * 0.028 : screenWidth * 0.008;

    final verticalSpacing = AppDimensions.getVerticalSpacing(context);
    final horizontalSpacing = AppDimensions.getHorizontalSpacing(context);

    return isMobile ? _buildMobileItem(context) : _buildLaptopItem(context);
  }

  Widget _buildMobileItem(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final padding = AppDimensions.getMediumPadding(context);
    final borderRadius = screenWidth * 0.03;
    final yearFontSize = AppDimensions.getCaptionFontSize(context);
    final titleFontSize = AppDimensions.getBodyFontSize(context);
    final bodyFontSize = screenWidth * 0.032;
    final captionFontSize = screenWidth * 0.028;
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);

    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: isActive ? Colors.white.withOpacity(0.05) : Colors.transparent,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: isActive
              ? Colors.white.withOpacity(0.3)
              : Colors.white.withOpacity(0.1),
          width: screenWidth * 0.001,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: padding * 0.75, vertical: padding * 0.25),
            decoration: BoxDecoration(
              color: isActive
                  ? Colors.blue.withOpacity(0.2)
                  : Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(screenWidth * 0.05),
              border: Border.all(
                color: isActive
                    ? Colors.blue.withOpacity(0.5)
                    : Colors.white.withOpacity(0.3),
                width: screenWidth * 0.001,
              ),
            ),
            child: Text(
              year,
              style: NasaTextStyle(
                yearFontSize,
                color: isActive ? Colors.blue[200] : Colors.white70,
              ),
            ),
          ),
          SizedBox(height: verticalSpacing * 0.75),
          Text(
            degree,
            style: NasaTextStyle(
              titleFontSize,
              color: isActive ? Colors.white : Colors.white.withOpacity(0.8),
            ),
          ),
          SizedBox(height: verticalSpacing * 0.25),
          Text(
            institution,
            style: NasaTextStyle(bodyFontSize, color: Colors.white70),
          ),
          SizedBox(height: verticalSpacing * 0.25),
          Text(
            specialization,
            style: NasaTextStyle(captionFontSize, color: Colors.white60),
          ),
          SizedBox(height: verticalSpacing * 0.5),
          Text(
            grade,
            style: NasaTextStyle(
              bodyFontSize,
              color: isActive ? Colors.green[300] : Colors.white70,
            ),
          ),
          SizedBox(height: verticalSpacing * 0.75),
          if (achievements.isNotEmpty) ...[
            Text(
              'Key Highlights:',
              style: NasaTextStyle(captionFontSize, color: Colors.white70),
            ),
            SizedBox(height: verticalSpacing * 0.5),
            ...achievements
                .map((achievement) => Padding(
                      padding: EdgeInsets.only(bottom: verticalSpacing * 0.25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '◦',
                            style: NasaTextStyle(
                              bodyFontSize,
                              color:
                                  isActive ? Colors.blue[300] : Colors.white60,
                            ),
                          ),
                          SizedBox(
                              width: AppDimensions.getSmallPadding(context)),
                          Expanded(
                            child: Text(
                              achievement,
                              style: NasaTextStyle(captionFontSize,
                                  color: Colors.white60),
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ],
        ],
      ),
    );
  }

  Widget _buildLaptopItem(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final nodeSize = screenWidth * 0.015;
    final borderWidth = screenWidth * 0.002;
    final padding = AppDimensions.getMediumPadding(context);
    final borderRadius = screenWidth * 0.009;
    final yearFontSize = AppDimensions.getCaptionFontSize(context);
    final titleFontSize = AppDimensions.getBodyFontSize(context);
    final bodyFontSize = screenWidth * 0.01;
    final captionFontSize = screenWidth * 0.008;
    final verticalSpacing = AppDimensions.getVerticalSpacing(context);
    final horizontalSpacing = AppDimensions.getHorizontalSpacing(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: nodeSize,
          height: nodeSize,
          margin: EdgeInsets.only(top: verticalSpacing * 0.3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? Colors.white : Colors.white.withOpacity(0.6),
            border: Border.all(
              color: isActive ? Colors.blue : Colors.white.withOpacity(0.4),
              width: borderWidth,
            ),
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      spreadRadius: screenWidth * 0.0015,
                      blurRadius: screenWidth * 0.006,
                    ),
                  ]
                : [],
          ),
        ),
        SizedBox(width: horizontalSpacing),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              color: isActive
                  ? Colors.white.withOpacity(0.05)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(
                color: isActive
                    ? Colors.white.withOpacity(0.3)
                    : Colors.white.withOpacity(0.1),
                width: screenWidth * 0.0008,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: padding * 0.75, vertical: padding * 0.25),
                  decoration: BoxDecoration(
                    color: isActive
                        ? Colors.blue.withOpacity(0.2)
                        : Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(screenWidth * 0.015),
                    border: Border.all(
                      color: isActive
                          ? Colors.blue.withOpacity(0.5)
                          : Colors.white.withOpacity(0.3),
                      width: screenWidth * 0.0008,
                    ),
                  ),
                  child: Text(
                    year,
                    style: NasaTextStyle(
                      yearFontSize,
                      color: isActive ? Colors.blue[200] : Colors.white70,
                    ),
                  ),
                ),
                SizedBox(height: verticalSpacing * 0.75),
                Text(
                  degree,
                  style: NasaTextStyle(
                    titleFontSize,
                    color:
                        isActive ? Colors.white : Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(height: verticalSpacing * 0.25),
                Text(
                  institution,
                  style: NasaTextStyle(bodyFontSize, color: Colors.white70),
                ),
                SizedBox(height: verticalSpacing * 0.25),
                Text(
                  specialization,
                  style: NasaTextStyle(captionFontSize, color: Colors.white60),
                ),
                SizedBox(height: verticalSpacing * 0.5),
                Text(
                  grade,
                  style: NasaTextStyle(
                    bodyFontSize,
                    color: isActive ? Colors.green[300] : Colors.white70,
                  ),
                ),
                SizedBox(height: verticalSpacing * 0.75),
                if (achievements.isNotEmpty) ...[
                  Text(
                    'Key Highlights:',
                    style:
                        NasaTextStyle(captionFontSize, color: Colors.white70),
                  ),
                  SizedBox(height: verticalSpacing * 0.5),
                  ...achievements
                      .map((achievement) => Padding(
                            padding:
                                EdgeInsets.only(bottom: verticalSpacing * 0.25),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '◦',
                                  style: NasaTextStyle(
                                    bodyFontSize,
                                    color: isActive
                                        ? Colors.blue[300]
                                        : Colors.white60,
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        AppDimensions.getSmallPadding(context)),
                                Expanded(
                                  child: Text(
                                    achievement,
                                    style: NasaTextStyle(captionFontSize,
                                        color: Colors.white60),
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
