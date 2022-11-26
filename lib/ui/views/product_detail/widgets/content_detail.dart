import 'package:coffe_app/models/product_model.dart';
import 'package:coffe_app/ui/theme/app_colors.dart';
import 'package:coffe_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class ContentDetail extends StatefulWidget {
  const ContentDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  State<ContentDetail> createState() => _ContentDetailState();
}

class _ContentDetailState extends State<ContentDetail> {
  int seletedIndex = 0;

  void _selectedIndex(int seletedIndexItem) {
    seletedIndex = seletedIndexItem;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("Dibujando Widgets");
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
        ),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            children: [
              Text(
                "Description",
                style: AppTextTheme.titleMedium(color: Colors.white54),
              ),
              const SizedBox(height: 10.0),
              Text(
                widget.product.description,
                style: AppTextTheme.titleMedium(),
              ),
              const SizedBox(height: 20.0),
              Text(
                "Size",
                style: AppTextTheme.titleMedium(color: Colors.white54),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _btnSize(
                    onTap: () => _selectedIndex(0),
                    defaultIndex: 0,
                    size: "S",
                  ),
                  _btnSize(
                    onTap: () => _selectedIndex(1),
                    defaultIndex: 1,
                    size: "M",
                  ),
                  _btnSize(
                    onTap: () => _selectedIndex(2),
                    defaultIndex: 2,
                    size: "L",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _btnSize({
    required void Function() onTap,
    required String size,
    required int defaultIndex,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 110.0,
        height: 50.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: defaultIndex == seletedIndex ? null : AppColors.kSearchColor,
          borderRadius: BorderRadius.circular(15.0),
          border: defaultIndex == seletedIndex
              ? Border.all(
                  color: AppColors.kAmber,
                )
              : null,
        ),
        child: Text(
          size,
          style: AppTextTheme.titleBold(
            color: defaultIndex == seletedIndex
                ? AppColors.kAmber
                : Colors.white60,
          ),
        ),
      ),
    );
  }
}
