import 'package:coffe_app/models/category_model.dart';
import 'package:coffe_app/ui/theme/app_text_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35.0,
      margin: const EdgeInsets.only(bottom: 30.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Container(
            margin: const EdgeInsets.only(left: 20.0),
            child: Text(
              category.name,
              style: AppTextTheme.titleBold(),
            ),
          );
        },
      ),
    );
  }
}
