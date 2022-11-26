import 'package:coffe_app/ui/components/template/custom_scaffold.dart';
import 'package:coffe_app/ui/components/titles/content_title.dart';
import 'package:coffe_app/ui/theme/app_colors.dart';
import 'package:coffe_app/ui/views/home/widgets/button_menu.dart';
import 'package:coffe_app/ui/views/home/widgets/categories.dart';
import 'package:coffe_app/ui/views/home/widgets/header_text.dart';
import 'package:coffe_app/ui/views/home/widgets/products.dart';
import 'package:coffe_app/ui/views/home/widgets/products_special.dart';
import 'package:coffe_app/ui/views/home/widgets/search.dart';
import 'package:coffe_app/ui/views/home/widgets/user_avatar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: const ButtonMenu(),
      actions: const [
        UserAvatar(),
      ],
      body: ListView(
        children: const [
          HeaderText(),
          Search(),
          Categories(),
          Products(),
          ContentTitle(
            title: "Special for you",
          ),
          ProductsSpecial(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.kAppBackground,
        fixedColor: AppColors.kAmber,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
