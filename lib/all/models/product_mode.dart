import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../views/pages/detailpage.dart';

class FoodCard extends StatelessWidget {
  
  
   FoodCard({super.key
    
   });

  @override
  Widget build(BuildContext context) {
    final productSnapshot =
        FirebaseFirestore.instance.collection('products').get();
    return Container(
      width: double.infinity,
      height: 240,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
          ),
        ],
      ),
      child: FutureBuilder(
        future: productSnapshot,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List<QueryDocumentSnapshot> products = snapshot.data!.docs;
            if (products.isEmpty) {
              return const Center(
                child: Text("No products"),
              );
            }
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index].data() as Map<String, dynamic>;
                final productImageUrl = product['imageURL'];
                final productName = product['name'];

                final productPrice = product['price'];
                final productVendor = product['vendor'];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            productName: productName,
                            productPrice: productPrice,
                            productVendor: productVendor,
                            productImageUrl: productImageUrl,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            productImageUrl,
                            fit: BoxFit.cover,
                            height: 140.0,
                            width: 260,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 260,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    productName,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    productVendor,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 260,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Ghc $productPrice",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.motorcycle_outlined,
                                        color: Colors.red,
                                        size: 16,
                                      ),
                                      Text(
                                        "15 - 20 mins",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
