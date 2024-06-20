import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 320,
      child: Image.network(
        'https://i.imgur.com/Bvoqh4m.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }
}
