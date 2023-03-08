import 'package:fds/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class CatalogProducts extends StatelessWidget {
  final productController = Get.put(ProductController());
  CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
          child: ListView.builder(
        itemCount: productController.products.length,
        itemBuilder: (BuildContext context, int index) {
          return CatalogProductCard(index: index);
        },
      )),
    );
   
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final ProductController productController = Get.find();
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
            backgroundImage:
                NetworkImage(productController.products[index].imageUrl),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(child: Text(productController.products[index].name)),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(productController.products[index].price.toString())),
          IconButton(
              onPressed: () {
                cartController.addProduct(productController.products[index]);
              },
              icon: const Icon(Icons.add_circle_outline))
        ],
      ),
    );
  }
}
