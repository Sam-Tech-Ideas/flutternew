import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String id;
  final String name;
  final String imageURL;
  final String vendor;
  final int price;

  Product({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.vendor,
    required this.price,

  });

  factory Product.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return Product(
      id: doc.id,
      name: data['name'],
      imageURL: data['imageURL'],
      vendor: data['vendor'],
      price: data['price'],
      
      
    );
  }
}
