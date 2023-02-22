import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fds/pages/detailpage.dart';
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
        height: 820,
        child: Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      height: 50,
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
                  const FoodCard(),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Recommended",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const FoodCard()
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
