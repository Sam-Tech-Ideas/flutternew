import 'package:fds/views/screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const CartScreen()),
                    child: const Text("Add to Cart")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
