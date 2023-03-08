import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 75.0,
      ),
      child: Obx(
        () => Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            'Total: ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('${controller.total}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ]),
      ),
    );
  }
}
