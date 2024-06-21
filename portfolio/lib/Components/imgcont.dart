import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 320,
      child: Image.network(
        'https://ik.imagekit.io/fzng9em8c/Portfolio/person.jpg?updatedAt=1718936236261',
        fit: BoxFit.cover,
      ),
    );
  }
}
