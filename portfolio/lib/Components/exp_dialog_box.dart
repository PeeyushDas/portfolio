import 'package:flutter/material.dart';
import 'package:portfolio/utils/txt_theme.dart';

class ExpDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: 600.0,
      height: 400,
      decoration: BoxDecoration(
        color: Color(0xFF0F1624).withOpacity(0.6),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.white,
          width: 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.network(
                'https://ik.imagekit.io/fzng9em8c/Portfolio/lesgo_org_logo.jpg?updatedAt=1718937282210', // Replace with your image URL
                width: 50,
                height: 50,
              ),
              SizedBox(width: 8.0),
              Text(
                'LesGo',
                style: NasaTextStyle(
                  20.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Divider(
            color: Colors.white,
            thickness: 0.5,
          ),
          SizedBox(height: 8.0),
          Text(
            'Flutter Developer [Intern]',
            style: NasaTextStyle(
              20.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Period: December 2023 - February 2024',
            style: NasaTextStyle(
              12,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            'Location: Bengaluru, Karnataka, India · Remote',
            style: NasaTextStyle(
              12,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Description:',
            style: NasaTextStyle(12),
          ),
          SizedBox(height: 8.0),
          BulletPoint(
              text:
                  'Developed and implemented over 15 screens for the LesGo mobile application using the Flutter framework.'),
          BulletPoint(text: 'Designed and developed various components.'),
          BulletPoint(
              text: 'Implemented API integration into the application.'),
          SizedBox(height: 16.0),
          Text(
            'Skills: App Development, API Integration, Designing Components, State Management',
            style: NasaTextStyle(
              12,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '➤',
            style: NasaTextStyle(
              20.0,
            ),
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: NasaTextStyle(
                12,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
