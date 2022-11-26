import 'package:coffe_app/models/product_model.dart';
import 'package:coffe_app/ui/theme/app_colors.dart';
import 'package:coffe_app/ui/theme/app_text_theme.dart';
import 'package:coffe_app/ui/views/product_detail/product_detail_view.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 255.0,
      //color: Colors.red,
      margin: const EdgeInsets.only(bottom: 30.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ProductDetailView(
                    product: products[index],
                  ),
                ),
              );
            },
            child: Container(
              width: 180.0,
              margin: const EdgeInsets.only(left: 20.0),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(39, 43, 49, 1.0),
                    Color.fromRGBO(15, 18, 23, 1.0),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: products[index].path,
                    transitionOnUserGestures: true,
                    child: Container(
                      width: double.infinity,
                      height: 140.0,
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage(products[index].path),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        width: 55.0,
                        height: 25.0,
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: AppColors.kAmber,
                              size: 14,
                            ),
                            const SizedBox(width: 3.0),
                            Text(
                              "4.5",
                              style:
                                  AppTextTheme.captionBold(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    products[index].title,
                    style: AppTextTheme.titleBold(color: Colors.white),
                  ),
                  Text(
                    products[index].subTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextTheme.subTitle(color: AppColors.kSubTitle),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: '\$',
                          style:
                              AppTextTheme.titleBold(color: AppColors.kAmber),
                          children: [
                            TextSpan(
                              text: ' ${products[index].price}',
                              style:
                                  AppTextTheme.titleBold(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("Click Add");
                        },
                        child: Container(
                          width: 28.0,
                          height: 28.0,
                          decoration: BoxDecoration(
                            color: AppColors.kAmber,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
