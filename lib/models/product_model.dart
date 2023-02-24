import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String category;
  final double price;
  final String imageURL;

  Product({required this.category, required this.price, required this.imageURL});


  static Product fromSnapShot(DocumentSnapshot snap){
    Product product = Product(imageURL: snap['imageURL'], category: snap['category'], price: snap['price']);
    return product; 
  }

// static Product fromSnapShot(DocumentSnapshot snap){
//   Product product = Product(imageUrl: snap['imageUrl'], name: snap['name'], price: snap['price']);
//   return product; 
// }
  // static List<Product> products = [
  //   Product(
  //       name: "Fufu",
  //       price: 12.9,
  //       imageUrl:
  //           'https://www.africanbites.com/wp-content/uploads/2022/04/Fufu-3.bmp'),
  //   Product(
  //       name: "Banku",
  //       price: 12.9,
  //       imageUrl:
  //           'https://www.africanbites.com/wp-content/uploads/2022/04/Fufu-3.bmp'),
  //   Product(
  //       name: "Waakye", 
  //       price: 12.9,
  //       imageUrl:
  //           'https://www.africanbites.com/wp-content/uploads/2022/04/Fufu-3.bmp'),
  //   Product(
  //       name: "Fried Rice",
  //       price: 12.9,
  //       imageUrl:
  //                     'https://www.africanbites.com/wp-content/uploads/2022/04/Fufu-3.bmp'),
  //  ];

    
}
