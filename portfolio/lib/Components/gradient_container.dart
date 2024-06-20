import 'package:flutter/material.dart';

class GradientContainer extends StatefulWidget {
  @override
  _GradientContainerState createState() => _GradientContainerState();
  Widget? chld;
  GradientContainer(Widget? child) {
    this.chld = child;
  }
}

class _GradientContainerState extends State<GradientContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);
    _colorAnimation = ColorTween(
      begin: Color.fromARGB(255, 82, 82, 82),
      end: Colors.black,
      //begin: Color.fromARGB(255, 1, 183, 255),
      //end: Color.fromARGB(255, 5, 38, 77),
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                _colorAnimation.value ?? Colors.transparent,
                Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
          child: widget.chld,
        );
      },
    );
  }
}
