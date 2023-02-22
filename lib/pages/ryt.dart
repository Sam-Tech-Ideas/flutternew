import 'package:fds/pages/try.dart';
import 'package:flutter/material.dart';

import '../models/cart.dart';

class MyTry extends StatelessWidget {
  final CartModel cartModel = CartModel(Cart());

  MyTry({super.key});

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
              const Text(
                'Tap the button to add an item to the cart:',
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
                  return Column(
                    children: [
                      Text(
                        'Items in cart: ${cart.items.length}',
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: cart.items.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(cart.items[index]),
                          );
                        },
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
