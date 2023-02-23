import 'package:fds/controllers/cart_controller.dart';
import 'package:fds/models/product_model.dart';
import 'package:fds/screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: Product.products.length,
        itemBuilder: (BuildContext context, int index) {
          return CatalogProductCard(index: index);
        },
      ),
    );
  }
}

class CatalogProductCard extends StatefulWidget {
  final cartController = Get.put(CartController());
  final int index;
  CatalogProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<CatalogProductCard> createState() => _CatalogProductCardState();
}

class _CatalogProductCardState extends State<CatalogProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => CartProducts());
              },
              child: Image.network(
                Product.products[widget.index].imageUrl,
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Product.products[widget.index].name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'GHC ${Product.products[widget.index].price}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  widget.cartController
                      .addProduct(Product.products[widget.index]);
                },
                icon: const Icon(Icons.add_circle))
          ],
        ),
      ),
    );
  }
}
