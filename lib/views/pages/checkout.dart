import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
          "Checkout Orders",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Order Summary",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const Image(
                image: AssetImage("images/am.jpg"),
                width: 100,
                height: 100,
              ),
              title: const Text("Grocery"),
              subtitle: const Text("1 item"),
              trailing: Column(
                children: const [
                  Text("Ghc. 100"),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.red,
                    size: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Delivery Address",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              title: Text("Home"),
              subtitle: Text("Accra, Ghana"),
              trailing: Icon(
                Icons.edit,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Payment Method",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(
                Icons.credit_card,
                color: Colors.red,
              ),
              title: Text("Credit Card"),
              subtitle: Text("**** **** **** 1234"),
              trailing: Icon(
                Icons.edit,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Text("Subtotal"),
              trailing: Text("Ghc. 100"),
            ),
            const ListTile(
              leading: Text("Delivery Fee"),
              trailing: Text("Ghc. 10"),
            ),
            const ListTile(
              leading: Text("Total"),
              trailing: Text("Ghc. 110"),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Order Placed"),
                        content: const Text(
                            "Your order has been placed successfully"),
                        actions: [
                          TextButton(
                              onPressed: null,
                              child: GestureDetector(
                                  onTap: () {},
                                  child: const Text("View Orders")))
                        ],
                      );
                    });
              },
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Place Order",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
