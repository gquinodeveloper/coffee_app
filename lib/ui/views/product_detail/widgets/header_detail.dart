import 'package:coffe_app/models/product_model.dart';
import 'package:coffe_app/ui/views/product_detail/widgets/header_buttons.dart';
import 'package:coffe_app/ui/views/product_detail/widgets/header_card.dart';
import 'package:flutter/material.dart';

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
            child: Hero(
              tag: product.path,
              transitionOnUserGestures: true,
              child: Image.asset(
                product.path,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const HeaderButtons(),
          HeaderCard(
            product: product,
          ),
        ],
      ),
    );
  }
}
