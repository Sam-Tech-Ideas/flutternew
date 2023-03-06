import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import '../models/food_model.dart';

class CartProducts extends StatelessWidget {
  final CartController controller = Get.find();

  CartProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
        itemCount: controller.products.length,
        itemBuilder: (BuildContext context, int index) {
          return CartProductCard(
            controller: controller,
            product: controller.products.keys.toList()[index],
            index: index,

          );
        },
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int index;
  final int quantity;

  CartProductCard({
    Key? key,

    required this.controller,
    required
    required this.product,
    required this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
