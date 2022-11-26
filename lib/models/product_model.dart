class ProductModel {
  int id;
  String title;
  String subTitle;
  double price;
  String path;
  String description;

  ProductModel({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.path,
    required this.description,
  });
}

List<ProductModel> products = [
  ProductModel(
    id: 1,
    title: "Cappuccino",
    subTitle: "With Oat Milk",
    price: 4.20,
    path: "assets/images/coffee_5.jpeg",
    description:
        "First, drag the Blur widget from the Base Elements tab (in the Widget Panel) or add it directly from the widget tree.",
  ),
  ProductModel(
    id: 2,
    title: "Cappuccino Milk",
    subTitle: "With Chocolate",
    price: 3.14,
    path: "assets/images/coffee_2.jpeg",
    description:
        "First, drag the Blur widget from the Base Elements tab (in the Widget Panel) or add it directly from the widget tree.",
  ),
  ProductModel(
    id: 3,
    title: "TE Milk",
    subTitle: "With Chocolate",
    price: 2.56,
    path: "assets/images/coffee_3.jpeg",
    description:
        "First, drag the Blur widget from the Base Elements tab (in the Widget Panel) or add it directly from the widget tree.",
  ),
  ProductModel(
    id: 4,
    title: "Coffee Chocolate",
    subTitle: "With milk and Chocolate",
    price: 2.56,
    path: "assets/images/coffee_4.jpeg",
    description:
        "First, drag the Blur widget from the Base Elements tab (in the Widget Panel) or add it directly from the widget tree.",
  ),
];
