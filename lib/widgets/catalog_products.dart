import 'package:fds/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/food_model.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
      itemCount: Product.products.length,
      itemBuilder: (BuildContext context, int index) {
        return CatalogProductCard(index: index);
      },
    ));
    // return GetBuilder<ProductController>(
    //   builder: (controller) {
    //     return ListView.builder(
    //       itemCount: controller.products.length,
    //       itemBuilder: (context, index) {
    //         return CatalogProductCard(
    //           product: controller.products[index],
    //         );
    //       },
    //     );
    //   },
    // );
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  CatalogProductCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(Product.products[index].imageUrl),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(child: Text(Product.products[index].name)),
          const SizedBox(
            width: 10,
          ),
          Expanded(child: Text(Product.products[index].price.toString())),
          IconButton(
              onPressed: () {
                cartController.addProduct(Product.products[index]);
              },
              icon: const Icon(Icons.add_circle_outline))
        ],
      ),
    );
  }
}
