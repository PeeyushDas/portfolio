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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double threeD = 0.2;
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedBackground(
        behaviour: SpaceBehaviour(),
        vsync: this,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                build3dContainer(
                    threeD,
                    -threeD,
                    GradientContainer(
                        chld: AboutText(), delay: Duration(seconds: 0)),
                    0), // Top left
                build3dContainer(
                    0.0,
                    -threeD,
                    GradientContainer(
                        chld: ProgrammingLanguageComponent(),
                        delay: Duration(seconds: 1)),
                    0), // Middle left
                build3dContainer(
                    -threeD,
                    -threeD,
                    GradientContainer(
                        chld: WorkExperience(), delay: Duration(seconds: 2)),
                    0), // Bottom left
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 850,
                  child: DeviceFrame(
                    device: Devices.android.samsungGalaxyNote20,
                    isFrameVisible: true,
                    orientation: Orientation.portrait,
                    screen: GradientContainer(
                        chld: MobScreen(), delay: Duration(seconds: 1)),
                  ),
                ),
                Text(
                  "Built with Flutter",
                  style:
                      TextStyle(fontFamily: 'nasalization', color: Colors.grey),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                build3dContainer(
                    threeD, threeD, ImageContainer(), 320), // Top right
                build3dContainer(
                    0.0,
                    threeD,
                    GradientContainer(
                        chld: Frameworks(),
                        delay: Duration(milliseconds: 2200)),
                    320), // Middle right
                build3dContainer(
                    -threeD,
                    threeD,
                    GradientContainer(
                        chld: tools_package(),
                        delay: Duration(milliseconds: 3200)),
                    320),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
