class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({required this.name, required this.price, required this.imageUrl});

  static List<Product> products = [
    Product(
        name: "Fufu",
        price: 12.9,
        imageUrl:
            'https://www.africanbites.com/wp-content/uploads/2022/04/Fufu-3.bmp'),
    Product(
        name: "Banku",
        price: 12.9,
        imageUrl:
            'https://www.africanbites.com/wp-content/uploads/2022/04/Fufu-3.bmp'),
    Product(
        name: "Waakye",
        price: 12.9,
        imageUrl:
            'https://www.africanbites.com/wp-content/uploads/2022/04/Fufu-3.bmp'),
    Product(
        name: "Fried Rice",
        price: 12.9,
        imageUrl:
                      'https://www.africanbites.com/wp-content/uploads/2022/04/Fufu-3.bmp'),
   ];
}
