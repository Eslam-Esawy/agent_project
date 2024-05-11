import 'package:flutter/material.dart';

class AppColors {
  static Color greenColor = const Color(0xff14AF74);
  static Color orangeColor = const Color(0xffF2A81D);
  static Color blackColor = Colors.black;

  //To understand the LinearGradient Widget (the widget for mixing colors in a text or anything) visit this link: https://www.youtube.com/watch?v=gYNTcgZVcWw
  //Visit this link to understand the ShaderMask Widget : https://www.youtube.com/watch?v=7sUL66pTQ7Q&t=4s

  //Function to directly callback the header gradient without having to implement it everytime
  static LinearGradient getHeaderGradient() {
    return LinearGradient(
        colors: [greenColor, orangeColor], tileMode: TileMode.mirror);
  }

  //Similar function to the header gradient for the bottom navigation bar
  static const Color whiteBottomNav1 = Color(0xffE0F7D5);
  static LinearGradient getNavBarGradient() {
    return LinearGradient(
        colors: [whiteBottomNav1, greenColor], tileMode: TileMode.mirror);
  }
}
