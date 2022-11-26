import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:coffe_app/models/product_model.dart';
import 'package:coffe_app/ui/components/buttons/btn_secondary.dart';
import 'package:coffe_app/ui/theme/app_colors.dart';
import 'package:coffe_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: [
          BlurryContainer(
            blur: 5.0,
            width: double.infinity,
            height: 150.0,
            elevation: 0.0,
            color: Colors.black54,
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 15.0,
            ),
            borderRadius: BorderRadius.circular(40.0),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextTheme.h4Bold(color: Colors.white),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          product.subTitle,
                          style: AppTextTheme.titleMedium(
                            color: Colors.white70,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: AppColors.kAmber,
                              size: 18,
                            ),
                            const SizedBox(width: 3.0),
                            Text(
                              "4.5",
                              style: AppTextTheme.subTitleBold(
                                  color: Colors.white),
                            ),
                            Text(
                              " (6,986)",
                              style: AppTextTheme.caption(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          BtnSecondary(
                            text: "Coffee",
                            icon: Icons.follow_the_signs,
                          ),
                          SizedBox(width: 20.0),
                          BtnSecondary(
                            text: "Milk",
                            icon: Icons.ac_unit,
                          ),
                        ],
                      ),
                      const BtnSecondary(
                        text: "Milk",
                        width: 140.0,
                        height: 45.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
