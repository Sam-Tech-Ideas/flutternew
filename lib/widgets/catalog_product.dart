import 'package:fds/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: Product.products.length,
        itemBuilder: (BuildContext context, int index) {
          return CatalogProductCard(
            index: index,
          );
        },
      ),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
   CatalogProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              Product.products[index].imageUrl,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(Product.products[index].name)),
          Expanded(child: Text(Product.products[index].price.toString())),
          IconButton(
              onPressed: () {
                cartController.addProduct(Product.products[index]);
              }, icon: const Icon(Icons.add_circle_outline))
        ],
      ),
    );
  }
}















// import 'package:fds/controllers/cart_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../controllers/product_controller.dart';

// class CatalogProducts extends StatelessWidget {
//   final productController = Get.put(ProductController());
//   CatalogProducts({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => Flexible(
//         child: ListView.builder(
//           itemCount: productController.products.length,
//           itemBuilder: (BuildContext context, int index) {
//             return CatalogProductCard(index: index);
//           },
//         ),
//       ),
//     );
//   }
// }

// class CatalogProductCard extends StatefulWidget {
//   final cartController = Get.put(CartController());
//   final ProductController productController = Get.find();
//   final int index;
//   CatalogProductCard({
//     Key? key,
//     required this.index,
//   }) : super(key: key);

//   @override
//   State<CatalogProductCard> createState() => _CatalogProductCardState();
// }

// class _CatalogProductCardState extends State<CatalogProductCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Card(
//         child: Row(
//           children: [
//             Image.network(
//               widget.productController.products[widget.index].imageUrl,
//               width: 100,
//               height: 100,
//             ),
//             const SizedBox(width: 10),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   widget.productController.products[widget.index].name,
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   'GHC ${widget.productController.products[widget.index].price}',
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             IconButton(
//               onPressed: () {
//                 widget.cartController.addProduct(
//                     widget.productController.products[widget.index]);
//               },
//               icon: const Icon(Icons.add_circle),
//             ),
//             IconButton(
//               onPressed: () {
//                 widget.cartController.removeProduct(
//                     widget.productController.products[widget.index]);
//               },
//               icon: const Icon(Icons.remove_circle),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
