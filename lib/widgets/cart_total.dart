// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';

// import '../controllers/cart_controller.dart';

// class CartTotal extends StatelessWidget {
//   final CartController controller = Get.find();
//   CartTotal({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => Container(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text(
//               'Total',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               'GHC ${controller.total}',
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
