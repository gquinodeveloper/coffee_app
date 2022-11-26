class CategoryModel {
  CategoryModel({
    required this.id,
    required this.name,
    required this.status,
  });

  int id;
  String name;
  bool status;
}

List<CategoryModel> categories = [
  CategoryModel(
    id: 1,
    name: "Cappuccino",
    status: true,
  ),
  CategoryModel(
    id: 2,
    name: "Espresso",
    status: false,
  ),
  CategoryModel(
    id: 3,
    name: "Latte",
    status: false,
  ),
  CategoryModel(
    id: 3,
    name: "Flaw white",
    status: false,
  ),
  CategoryModel(
    id: 3,
    name: "Coffee white",
    status: false,
  ),
];
