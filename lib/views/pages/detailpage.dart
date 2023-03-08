import 'package:fds/controllers/cart_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatefulWidget {
  final CartController controller = Get.find();
  DetailPage(
      {super.key,
      required this.productName,
      required this.productVendor,
      required this.productPrice,
      required this.productImageUrl});

  final String productName;
  final String productVendor;
  final String productImageUrl;
  final int productPrice;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
  }

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
        title: Text(
          widget.productName,
          style: const TextStyle(
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
                color: Colors.red,
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
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                widget.productVendor,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            Image.network(
              widget.productImageUrl,
              height: 300,
              width: 400,
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
              height: 10,
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
                          size: 24,
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
                          size: 24,
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
                            color: Colors.red,
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            '${widget.productPrice}',
                            style: const TextStyle(
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
          // showModalBottomSheet(
          //   backgroundColor: Colors.transparent,
          //   context: context,
          //   builder: (BuildContext context) {
          //     return SingleChildScrollView(
          //       scrollDirection: Axis.vertical,
          //       child: Container(
          //           decoration: const BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.only(
          //               topLeft: Radius.circular(25),
          //               topRight: Radius.circular(25),
          //             ),
          //           ),
          //           child: Padding(
          //             padding: const EdgeInsets.all(16.0),
          //             child: Column(
          //               children: [
          //                 const Padding(
          //                   padding: EdgeInsets.all(8.0),
          //                   child: Text(
          //                     "Have you got everything?",
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                 ),
          //                 ListTile(
          //                   leading: Container(
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(10),
          //                         color: Colors.red,
          //                       ),
          //                       child: Image.asset("images/am.jpg")),
          //                   title: const Text("Chicken"),
          //                   subtitle: const Text("GH₵ 10.00"),
          //                   trailing: Row(
          //                     mainAxisSize: MainAxisSize.min,
          //                     children: const [
          //                       Icon(
          //                         Icons.add_circle_outline_rounded,
          //                         color: Colors.red,
          //                         size: 30,
          //                       ),
          //                       SizedBox(
          //                         width: 2,
          //                       ),
          //                       Text(
          //                         "01",
          //                         style: TextStyle(
          //                           fontSize: 14,
          //                           color: Colors.black,
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: 2,
          //                       ),
          //                       Icon(
          //                         CupertinoIcons.minus_circle,
          //                         color: Colors.red,
          //                         size: 30,
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //                 const SizedBox(
          //                   height: 10,
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(16.0),
          //                   child: GestureDetector(
          //                     onTap: () {
          //                       Navigator.push(
          //                         context,
          //                         MaterialPageRoute(
          //                           builder: (context) => const CheckoutPage(),
          //                         ),
          //                       );
          //                     },
          //                     child: Container(
          //                       height: 50,
          //                       margin: const EdgeInsets.only(),
          //                       width: double.infinity,
          //                       decoration: BoxDecoration(
          //                         color: Colors.red,
          //                         borderRadius: BorderRadius.circular(10),
          //                       ),
          //                       child: const Center(
          //                         child: Text(
          //                           "Checkout",
          //                           style: TextStyle(
          //                             color: Colors.white,
          //                             fontSize: 18,
          //                           ),
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           )),
          //     );
          //   },
          // );
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
    );
  }
}
