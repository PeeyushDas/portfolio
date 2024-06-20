import 'package:flutter/material.dart';

class GradientContainer extends StatefulWidget {
  final Widget? chld;
  final Duration delay;

  GradientContainer({this.chld, this.delay = Duration.zero});

  @override
  _GradientContainerState createState() => _GradientContainerState();
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
    );
    _colorAnimation = ColorTween(
      end: Color.fromARGB(255, 63, 63, 63),
      begin: Color.fromARGB(255, 0, 0, 0),
    ).animate(_animationController);

    Future.delayed(widget.delay, () {
      _animationController.repeat(reverse: true);
    });
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
