import 'package:coffe_app/ui/theme/app_colors.dart';
import 'package:coffe_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class BtnSecondary extends StatelessWidget {
  const BtnSecondary({
    Key? key,
    required this.text,
    this.width = 65.0,
    this.height = 65.0,
    this.color = AppColors.kPrimary,
    this.icon,
    this.onTap,
  }) : super(key: key);

  final String text;
  final double width;
  final double height;
  final Color color;
  final IconData? icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null
                ? Icon(icon, color: AppColors.kAmber)
                : const SizedBox(),
            Text(
              text,
              style: AppTextTheme.titleMedium(
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
