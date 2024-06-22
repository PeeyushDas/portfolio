import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppEmail extends StatelessWidget {
  final String imagePath;
  final String text;
  final String url; // URL field

  AppEmail({required this.imagePath, required this.text, required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final Uri emailLaunchUri = Uri(
          scheme: 'mailto',
          path: url, // Assuming 'text' contains the email address
        );
        if (await canLaunchUrl(emailLaunchUri)) {
          await launchUrl(emailLaunchUri);
        } else {
          print('Could not launch $emailLaunchUri');
        }
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click, // Change cursor on hover
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imagePath,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                text,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
