import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.arrow_back),
              ],
            ),
          ),
          actions: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(" My Cart"),
                ),
              ],
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/empty.png',
              width: 300,
              height: 200,
            ),
            const Text("Your Cart is Empty",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 4,
                left: 4,
              ),
              child: Center(
                child: Text(
                    "Looks like you haven't added anything to your cart yet",
                    style: TextStyle(
                      fontSize: 10,
                    )),
              ),
            ),
          ],
        ));
  }
}
