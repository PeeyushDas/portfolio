import 'package:flutter/material.dart';
import 'package:portfolio/Screens/home_page.dart';
import 'package:portfolio/Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peeyush\'s Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'nasalization',
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
