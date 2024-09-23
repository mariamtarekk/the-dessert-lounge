class MenuItem {
  final String name;
  final String price;
  final String imagePath;
  final String category;
  int counter = 1;

  MenuItem({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.category,
  });
}