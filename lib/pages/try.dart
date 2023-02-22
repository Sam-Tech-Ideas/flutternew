import 'package:fds/pages/ryt.dart';
import 'package:flutter/material.dart';

import '../models/cart.dart';

void main() {
  runApp(TryApp());
}

// cart class
class Cart {
  final List<String> _items = [];

  List<String> get items => _items;

  void addItem(String item) {
    _items.add(item);
  }
}

class TryApp extends StatelessWidget {
  final CartModel cartModel = CartModel(Cart());

  TryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adding to Cart Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Adding to Cart Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyTry(),
                    ),
                  );
                },
                child: const Text(
                  'Tap the button to add an item to the cart:',
                ),
              ),
              ElevatedButton(
                child: const Text('Add Item'),
                onPressed: () {
                  cartModel.addItemToCart('Item');
                },
              ),
              ValueListenableBuilder<Cart>(
                valueListenable: cartModel,
                builder: (context, cart, child) {
                  return Text(
                    'Items in cart: ${cart.items.length}',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
