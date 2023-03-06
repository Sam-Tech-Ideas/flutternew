import 'package:fds/widgets/catalog_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const CatalogProducts(),
            ElevatedButton(
                onPressed: () => Get.to(() => CartScreen),
                child: const Text('Cart'))
          ],
        ),
      ),
    );
  }
}
