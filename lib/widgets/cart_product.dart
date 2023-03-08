import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import '../models/food_model.dart';

class CartProducts extends StatelessWidget {
  final CartController controller = Get.find();
  CartProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 550,
        child: ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (BuildContext context, int index) {
            return CartProductCard(
              controller: controller,
              product: controller.products.keys.toList()[index],
              index: index,
              quantity: controller.products.values.toList()[index],
            );
          },
        ),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int index;

  final int quantity;

  const CartProductCard({
    Key? key,
    required this.controller,
    required this.product,
    required this.index,
    required this.quantity,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(product.imageUrl),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              product.name,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                controller.removeProduct(product);
              },
              icon: const Icon(Icons.remove_circle_outline)),
          IconButton(
              onPressed: () {
                controller.addProduct(product);
              },
              icon: const Icon(Icons.add_circle_outline)),
          Text(
            quantity.toString(),
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
