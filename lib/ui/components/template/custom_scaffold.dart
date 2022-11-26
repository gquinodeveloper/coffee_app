import 'package:coffe_app/ui/theme/app_colors.dart';
import 'package:coffe_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    Key? key,
    this.title,
    this.showAppBar = false,
    this.leading,
    this.actions,
    this.body,
    this.bottomNavigationBar,
  }) : super(key: key);

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final bool showAppBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kAppBackground,
      appBar: showAppBar
          ? AppBar(
              elevation: 0.0,
              backgroundColor: AppColors.kAppBackground,
              leading: leading,
              centerTitle: false,
              title: title,
              actions: actions,
            )
          : null,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
