import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String name;
  final String imageUrl;
  final String vendor;
  final double price;
  final String description;
  final String category;


  const Product({
    required this.name,
    required this.imageUrl,
    required this.vendor,
    required this.price,
    required this.description,
    required this.category,

  });

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product =  Product(
      name: snap['name'],
      imageUrl: snap['imageUrl'],
      vendor: snap['vendor'],
      price: snap['price'],
      description: snap['description'],
      category: snap['category'],
    
    );
    return product;
  }
}
