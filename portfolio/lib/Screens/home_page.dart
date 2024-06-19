import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:portfolio/Components/gradient_container.dart';
import 'package:portfolio/Components/inside_cont.dart';
import 'package:portfolio/Components/threeD_containerlt.dart';
import 'package:portfolio/Components/threeD_containerrt.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
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
                build3dContainerleft(0.3, -0.3, InsideContainer()), // Top left
                build3dContainerleft(
                    0.0, -0.3, InsideContainer()), // Middle left
                build3dContainerleft(
                    -0.3, -0.3, InsideContainer()), // Bottom left
              ],
            ),
            SizedBox(
              height: 850,
              child: DeviceFrame(
                device: Devices.android.samsungGalaxyNote20,
                isFrameVisible: true,
                orientation: Orientation.portrait,
                screen: GradientContainer(SizedBox()),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                build3dContainerright(
                    0.3, 0.3, GradientContainer(SizedBox())), // Top right
                build3dContainerright(
                    0.0, 0.3, GradientContainer(SizedBox())), // Middle right
                build3dContainerright(-0.3, 0.3, GradientContainer(SizedBox())),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
