import 'package:coffe_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Text(
        title,
        style: AppTextTheme.titleBold(color: Colors.white),
      ),
    );
  }
}
