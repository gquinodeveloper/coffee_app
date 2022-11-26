import 'package:flutter/material.dart';

class AppColors {
  static const kAppBackground = Color.fromRGBO(13, 15, 21, 1.0);
  static const kPrimary = Color.fromRGBO(13, 15, 21, 1.0);
  static const kSearchColor = Color.fromRGBO(21, 25, 32, 1.0);
  static const kAmber = Color.fromRGBO(197, 125, 77, 1.0);
  static const kTitle = Color.fromRGBO(21, 25, 32, 1.0);
  static const kSubTitle = Color.fromRGBO(85, 85, 90, 1.0);
  static const kGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromRGBO(39, 43, 49, 1.0),
      Color.fromRGBO(15, 18, 23, 1.0),
    ],
  );
}
