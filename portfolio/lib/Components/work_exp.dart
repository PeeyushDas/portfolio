import 'package:flutter/material.dart';
import 'package:portfolio/Components/exp_dialog_box.dart';
import 'package:portfolio/utils/txt_theme.dart';

import 'package:flutter/material.dart';

class WorkExperience extends StatefulWidget {
  @override
  _WorkExperienceState createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  Color _borderColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18.0),
          Text(
            " Work Experience",
            style: NasaTextStyle(
              20,
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Center(child: ExpDialogBox());
                },
              );
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (event) {
                setState(() {
                  _borderColor = Colors.white;
                });
              },
              onExit: (event) {
                setState(() {
                  _borderColor = Colors.transparent;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: Color(0xff1E1E1E),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: _borderColor,
                    width: 2,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://ik.imagekit.io/fzng9em8c/Portfolio/lesgo_org_logo.jpg?updatedAt=1718937282210',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Text('LesGo', style: NasaTextStyle(16)),
                    SizedBox(width: 1),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
