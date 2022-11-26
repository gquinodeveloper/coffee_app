import 'package:coffe_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static TextStyle titleAppBar({
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontSize: 18.0,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle h2Bold({
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontSize: 36.0,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle h4Bold({
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontSize: 24.0,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle titleBold({
    Color color = AppColors.kSubTitle,
  }) {
    return TextStyle(
      fontSize: 16.0,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle titleMedium({
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontSize: 14.0,
      color: color,
    );
  }

  static TextStyle subTitle({
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontSize: 14.0,
      color: color,
    );
  }

  static TextStyle subTitleBold({
    Color color = Colors.white,
  }) {
    return TextStyle(fontSize: 14.0, color: color, fontWeight: FontWeight.w700);
  }

  static TextStyle caption({
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontSize: 12.0,
      color: color,
    );
  }

  static TextStyle captionBold({
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontSize: 12.0,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }
}
