import 'package:coffe_app/ui/theme/app_colors.dart';
import 'package:coffe_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class ProductsSpecial extends StatelessWidget {
  const ProductsSpecial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          height: 120.0,
          margin: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 15.0,
          ),
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: AppColors.kGradient,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/coffee_1.jpeg",
                  width: 140.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Product Name",
                      style: AppTextTheme.titleBold(color: Colors.white),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextTheme.subTitle(
                        color: AppColors.kSubTitle,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: AppColors.kAmber,
                          size: 14,
                        ),
                        const SizedBox(width: 3.0),
                        Text(
                          "4.5",
                          style: AppTextTheme.captionBold(color: Colors.white),
                        ),
                        const Spacer(),
                        RichText(
                          text: TextSpan(
                            text: '\$',
                            style:
                                AppTextTheme.titleBold(color: AppColors.kAmber),
                            children: [
                              TextSpan(
                                text: ' 4.2O',
                                style:
                                    AppTextTheme.titleBold(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
