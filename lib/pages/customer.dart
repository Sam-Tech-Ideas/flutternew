import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: 1050,
        child: Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 8,
                          left: 8,
                        ),
                        child: Text("Hi Samuel, ",
                            style: TextStyle(
                              fontSize: 14,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black12,
                                  width: 1.0,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.notifications_active_outlined,
                                  size: 19,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black12,
                                  width: 1.0,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.shopping_bag_outlined,
                                  size: 19,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      color: Colors.grey[200],
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "What are you looking for?",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text("Categories",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                        ),
                        child: Text("See all",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.red,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Popular",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "You",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const FoodCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FoodCard extends StatefulWidget {
  const FoodCard({super.key});

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    final productSnapshot =
        FirebaseFirestore.instance.collection('products').get();
    return Container(
      margin: const EdgeInsets.all(8),
      width: 250,
      height: 330,
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
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(
                width: 30,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index].data() as Map<String, dynamic>;
                final productImageUrl = product['imageURL'];
                final productName = product['name'];

                final productPrice = product['price'];
                final productVendor = product['vendor'];
                return Card(
                  child: Column(
                    children: [
                      Image.network(
                        productImageUrl,
                        fit: BoxFit.cover,
                        height: 210,
                        width: 250,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  productVendor,
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                      "\$${productPrice.toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.red,
                                      )),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8.0,
                              ),
                              child: Text(productName,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 4.0,
                                bottom: 0,
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.motorcycle_outlined,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    " 5-10 mins",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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


// class ProductList extends StatelessWidget {
//   const ProductList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 330,
//       child: Padding(
//         padding: const EdgeInsets.only(
//           right: 6,
//           left: 7,
//         ),
//         child: ListView(
//           scrollDirection: Axis.horizontal,
//           children: [
             

//           ],
//         ),
//       ),
//     );
//   }
// }
