import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:portfolio/Components/about_text.dart';
import 'package:portfolio/Components/frameworks.dart';
import 'package:portfolio/Components/gradient_container.dart';
import 'package:portfolio/Components/imgcont.dart';
import 'package:portfolio/Components/mobscreen.dart';
import 'package:portfolio/Components/programming_lng.dart';
import 'package:portfolio/Components/threeD_container.dart';
import 'package:portfolio/Components/tools.dart';
import 'package:portfolio/Components/work_exp.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/dimensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = ResponsiveHelper.isMobile(context);

    double threeD = isMobile ? screenWidth * 0.01 : screenWidth * 0.008;

    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedBackground(
        behaviour: SpaceBehaviour(),
        vsync: this,
        child: isMobile ? _buildMobileLayout() : _buildLaptopLayout(),
      ),
    );
  }

  Widget _buildMobileLayout() {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double threeD = 0.2;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.getMediumPadding(context),
        vertical: AppDimensions.getLargePadding(context),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // About section

          // Mobile device preview
          SizedBox(
            height: screenHeight * 0.9,
            child: DeviceFrame(
              device: Devices.android.samsungGalaxyNote20,
              isFrameVisible: true,
              orientation: Orientation.portrait,
              screen: GradientContainer(
                  chld: MobScreen_2(), delay: Duration(seconds: 1)),
            ),
          ),
          SizedBox(height: AppDimensions.getVerticalSpacing(context)),

          //Text(
          //  "Built with Flutter",
          //  style: TextStyle(
          //    fontFamily: 'nasalization',
          //    color: Colors.grey,
          //    fontSize: AppDimensions.getCaptionFontSize(context),
          //  ),
          //),
          SizedBox(height: AppDimensions.getVerticalSpacing(context)),
        ],
      ),
    );
  }

  Widget _buildLaptopLayout() {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double threeD = 0.2;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.getLargePadding(context),
          vertical: AppDimensions.getMediumPadding(context),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Left column
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  build3dContainer(
                    threeD,
                    -threeD,
                    GradientContainer(
                        chld: AboutText(), delay: Duration(seconds: 0)),
                    0,
                  ),
                  build3dContainer(
                    0.0,
                    -threeD,
                    GradientContainer(
                        chld: ProgrammingLanguageComponent(),
                        delay: Duration(seconds: 1)),
                    0,
                  ),
                  build3dContainer(
                    -threeD,
                    -threeD,
                    GradientContainer(
                        chld: WorkExperience(), delay: Duration(seconds: 2)),
                    0,
                  ),
                ],
              ),
            ),

            SizedBox(width: AppDimensions.getHorizontalSpacing(context)),

            // Center column
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.9,
                    child: DeviceFrame(
                      device: Devices.android.samsungGalaxyNote20,
                      isFrameVisible: true,
                      orientation: Orientation.portrait,
                      screen: GradientContainer(
                          chld: MobScreen(), delay: Duration(seconds: 1)),
                    ),
                  ),
                  //Text(
                  //  "Built with Flutter",
                  //  style: TextStyle(
                  //    fontFamily: 'nasalization',
                  //    color: Colors.grey,
                  //    fontSize: AppDimensions.getCaptionFontSize(context),
                  //  ),
                  // ),
                ],
              ),
            ),

            SizedBox(width: AppDimensions.getHorizontalSpacing(context)),

            // Right column
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  build3dContainer(
                    threeD,
                    threeD,
                    ImageContainer(),
                    screenWidth * 0.25,
                  ),
                  build3dContainer(
                    0.0,
                    threeD,
                    GradientContainer(
                        chld: Frameworks(),
                        delay: Duration(milliseconds: 2200)),
                    screenWidth * 0.25,
                  ),
                  build3dContainer(
                    -threeD,
                    threeD,
                    GradientContainer(
                        chld: tools_package(),
                        delay: Duration(milliseconds: 3200)),
                    screenWidth * 0.25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
