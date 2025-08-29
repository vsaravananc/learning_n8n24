import 'package:flutter/material.dart';
import 'package:protfolio/screens/hr/homehr_screen.dart';
import 'package:protfolio/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: DarkTheme.darkTheme(context),
      home: HomeHRScreen(),
      //  IntroScreen(),
    );
  }
}
