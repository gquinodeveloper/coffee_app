import 'package:coffe_app/models/product_model.dart';
import 'package:coffe_app/ui/theme/app_colors.dart';
import 'package:coffe_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class FooterDetail extends StatelessWidget {
  const FooterDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: AppColors.kAppBackground,
      margin: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Size",
                style: AppTextTheme.titleMedium(color: Colors.white54),
              ),
              RichText(
                text: TextSpan(
                  text: '\$',
                  style: AppTextTheme.titleBold(color: AppColors.kAmber),
                  children: [
                    TextSpan(
                      text: ' ${product.price}',
                      style: AppTextTheme.h4Bold(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 180.0,
            height: 60.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.kAmber,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Text(
              "Buy Now",
              style: AppTextTheme.h4Bold(),
            ),
          ),
        ],
      ),
    );
  }
}
