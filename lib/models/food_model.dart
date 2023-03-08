import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String name;
  final String imageUrl;
  final String vendor;
  final int price;
  final String category;

  const Product({
    required this.name,
    required this.imageUrl,
    required this.vendor,
    required this.price,
    required this.category,
  });

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      name: snap['name'],
      vendor: snap['vendor'],
      price: snap['price'],
      imageUrl: snap['imageURl'],
      category: snap['category'],
    );
    return product;
  }
}
  // static const List<Product> products = [
  //   Product(
  //     name: 'Burger',
  //     vendor: 'McDonalds',
  //     price: 5.99,
  //     imageUrl:
  //         'https://cdn.britannica.com/60/217660-050-DBCC409A/cheddar-cheese-wedge.jpg',
  //     description:
  //         'A hamburger with cheese, lettuce, pickles, onions, and special sauce on a sesame seed bun.',
  //     category: 'Burgers',
  //   ),
  //   Product(
  //     name: 'Cheeseburger',
  //     vendor: 'McDonalds',
  //     price: 5.99,
  //     imageUrl:
  //         'https://cdn.britannica.com/60/217660-050-DBCC409A/cheddar-cheese-wedge.jpg',
  //     description:
  //         'A hamburger with cheese, lettuce, pickles, onions, and special sauce on a sesame seed bun.',
  //     category: 'Burgers',
  //   ),
  //   Product(
  //     name: 'Double Cheeseburger',
  //     vendor: 'McDonalds',
  //     price: 5.99,
  //     imageUrl:
  //         'https://cdn.britannica.com/60/217660-050-DBCC409A/cheddar-cheese-wedge.jpg',
  //     description:
  //         'A hamburger with cheese, lettuce, pickles, onions, and special sauce on a sesame seed bun.',
  //     category: 'Burgers',
  //   ),
  // ];
  // static Product fromSnapshot(DocumentSnapshot snap) {
  //   Product product =  Product(
  //     name: snap['name'],
  //     imageUrl: snap['imageUrl'],
  //     vendor: snap['vendor'],
  //     price: snap['price'],
  //     description: snap['description'],
  //     category: snap['category'],

  //   );
  //   return product;
  // }

