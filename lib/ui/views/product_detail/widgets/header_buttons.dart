import 'package:coffe_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderButtons extends StatelessWidget {
  const HeaderButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _getBtnIcon(
              onTap: () {
                Navigator.pop(context);
              },
              icon: Icons.arrow_back_ios,
            ),
            _getBtnIcon(
              onTap: () {
                print("Favorito");
              },
              icon: Icons.favorite,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getBtnIcon({
    required void Function() onTap,
    required IconData icon,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: AppColors.kGradient,
        ),
        child: Icon(
          icon,
          size: 18.0,
          color: Colors.white30,
        ),
      ),
    );
  }
}
