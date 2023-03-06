import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/product_controller.dart';
import '../models/food_model.dart';



class CatalogProducts extends StatelessWidget {
  const CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder: (controller) {
        return ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            return CatalogProductCard(
              product: controller.products[index],
            );
          },
        );
      },
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  final Product product;
  const CatalogProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Get.toNamed('/detail', arguments: product);
        },
        child: Container(
          width: 200,
          height: 240,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
              ),
            ],
          ),
          child: Column(
            children: [
              Image.network(
                product.imageUrl,
                width: 200,
                height: 200,
              ),
              Text(product.name),
              Text(product.price.toString()),
              Text(product.vendor),
            ],
          ),
        ),
      ),
    );
  }
}