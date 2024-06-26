import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AppContainer extends StatelessWidget {
  final String imagePath;
  final String text;
  final String url; // URL field

  AppContainer({
    required this.imagePath,
    required this.text,
    required this.url, // Initialize the URL in the constructor
  });

  // Method to launch URL
  Future<void> _launchUrl() async {
    if (!await launchUrlString(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click, // Change cursor on hover
      child: GestureDetector(
        onTap: _launchUrl, // Call _launchUrl when the widget is tapped
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
