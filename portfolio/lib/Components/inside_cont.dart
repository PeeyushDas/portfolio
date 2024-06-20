import 'package:flutter/material.dart';

class InsideContainer extends StatelessWidget {
  Widget? child;
  InsideContainer({Widget? child}) {
    this.child = child;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
        color: Colors.black.withOpacity(0.9),
      ),
      // Add more properties or child widgets here
    );
  }
}
