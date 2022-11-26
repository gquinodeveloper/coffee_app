import 'package:coffe_app/models/product_model.dart';
import 'package:coffe_app/ui/components/template/custom_scaffold.dart';
import 'package:coffe_app/ui/views/product_detail/widgets/content_detail.dart';
import 'package:coffe_app/ui/views/product_detail/widgets/footer_detail.dart';
import 'package:coffe_app/ui/views/product_detail/widgets/header_detail.dart';
import 'package:flutter/material.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    print("Producto seleccionado: ${product.title}");
    return CustomScaffold(
      body: Column(
        children: [
          HeaderDetail(
            product: product,
          ),
          ContentDetail(
            product: product,
          ),
        ],
      ),
      bottomNavigationBar: FooterDetail(
        product: product,
      ),
    );
  }
}
