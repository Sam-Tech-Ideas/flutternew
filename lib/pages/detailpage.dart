import 'package:fds/pages/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black45,
          ),
        ),
        title: const Text(
          "Pizza",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(
                right: 10.0,
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.black45,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Missed Pizza with beef , chilli and cheese",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Text(
                "DailyBites",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            ClipRRect(
                borderRadius: BorderRadius.circular(
                  360,
                ),
                child: Image.asset(
                  "images/am.jpg",
                  height: 200,
                  width: 200,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Rating",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 16,
                        ),
                        Text(
                          "4.7",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 1,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    const Text(
                      "location",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 18,
                        ),
                        Text(
                          "Ayeduase",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 30,
                  width: 1,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    const Text(
                      "Delivery Time",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.motorcycle_outlined,
                          size: 18,
                          color: Colors.red,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "15-20 min",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Order",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.add_circle_outline_rounded,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "01",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          CupertinoIcons.minus_circle,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Delivery Fee",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          "GH₵ 2.00",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Ghce 45.00",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 29,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CartPage(),
            ),
          );
        },
        child: Container(
          height: 50,
          margin: const EdgeInsets.only(
            left: 30,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              "Add to Cart",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
      //  FloatingActionButton(

      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => const CartPage(),
      //       ),
      //     );
      //   },
      //   backgroundColor: Colors.red,
      //   child: const Icon(
      //     Icons.shopping_cart,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }

  int getQuantity() {
    // get the quantity of items in the cart
    return 5;
  }

  double getTotalPrice() {
    // get the total price of items in the cart
    return 45.0;
  }
}
// Row(
//   children: const [
//     Text(
//       "Order",
//       style: TextStyle(
//         fontSize: 14,
//         color: Colors.black,
//       ),
//     ),
//   ],
// ),
// const SizedBox(
//   height: 10,
// ),
// Row(
//   children: const [
//     Icon(
//       Icons.add_circle_outline_rounded,
//       color: Colors.red,
//     ),
//     SizedBox(
//       width: 2,
//     ),
//     Text(
//       "01",
//       style: TextStyle(
//         fontSize: 14,
//         color: Colors.black,
//       ),
//     ),
//     SizedBox(
//       width: 2,
//     ),
//     Icon(
//       CupertinoIcons.minus_circle,
//       color: Colors.red,
//     ),
//   ],
// ),
