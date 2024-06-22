import 'package:flutter/material.dart';
import 'package:portfolio/utils/txt_theme.dart';

class AboutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Wrap the Container with Center to ensure it doesn't expand
      child: SizedBox(
        width: 1200.0, // Specify the width
        height: 800.0, // Specify the height
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Color(0xFF0F1624).withOpacity(0.6),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: Colors.white,
              width: 0.5,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.5),
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(
                          0.5), // Adjust the color to get the desired glow effect
                      spreadRadius: 5, // Spread radius
                      blurRadius: 7, // Blur radius
                      offset: Offset(0, 3),
                      // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://ik.imagekit.io/fzng9em8c/Portfolio/WhatsApp%20Image%202024-06-22%20at%2021.56.13.jpeg.crdownload?updatedAt=1719074411689',
                  ),
                ),
              ),
              SizedBox(width: 100.0),
              SizedBox(
                width: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Peeyush Das',
                      style: NasaTextStyle(
                        24.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Hello, I am a Flutter Developer with a passion for creating beautiful and functional user interfaces. Currently, I am pursuing Bachelor of Technology at National Institute of Technology, Rourkela. I have experience in developing mobile applications using Flutter and Dart. I am a quick learner and is always eager to learn new technologies and frameworks. I am currently looking for opportunities to work on exciting projects and contribute to the success of the team. I am open to remote and positions.',
                      style: NasaTextStyle(
                        20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
