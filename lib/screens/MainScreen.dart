import 'package:fds/screens/cartscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/catalog_product.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const CatalogProducts(),
            ElevatedButton(
              onPressed: () => Get.to(() => const CartScreen()),
              child: const Text('Go to Cart Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
