import 'package:coffe_app/ui/constant/app_constant.dart';
import 'package:coffe_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kMarginApp,
        vertical: 30.0,
      ),
      child: Text(
        "Find the bets\ncoffee for you",
        style: AppTextTheme.h2Bold(),
      ),
    );
  }
}
