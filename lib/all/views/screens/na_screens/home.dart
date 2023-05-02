// import 'package:fds/all/controllers/product_controller.dart';
// import 'package:flutter/material.dart';

// import '../../../models/product_model.dart';

// class HomeScreen extends StatelessWidget {
//   final ProductController controller = ProductController();
//   HomeScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My Data'),
//       ),
//       body: FutureBuilder<List<Product>>(
//         future: controller.getData(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(
//                       //     builder: (context) => DetailPage(
//                       //       productName: productName,
//                       //       productPrice: productPrice,
//                       //       productVendor: productVendor,
//                       //       productImageUrl: productImageUrl,
//                       //     ),
//                       //   ),
//                       // );
//                     },
//                     child: Card(
//                       child: Column(
//                         children: <Widget>[
//                           Image.network(
//                             snapshot.data![index].imageURL,
//                             fit: BoxFit.cover,
//                             height: 140.0,
//                             width: 260,
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           SizedBox(
//                             width: 260,
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     snapshot.data![index].name,
//                                     style: const TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                   Text(
//                                     snapshot.data![index].vendor,
//                                     style: const TextStyle(
//                                       fontSize: 12,
//                                       color: Colors.grey,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 260,
//                             child: Padding(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 8.0,
//                               ),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     "\$${snapshot.data![index].price}",
//                                     style: const TextStyle(
//                                       fontSize: 16,
//                                       color: Colors.red,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                   Row(
//                                     children: const [
//                                       Icon(
//                                         Icons.motorcycle_outlined,
//                                         color: Colors.red,
//                                         size: 16,
//                                       ),
//                                       Text(
//                                         "15 - 20 mins",
//                                         style: TextStyle(
//                                           fontSize: 14,
//                                           color: Colors.grey,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             );
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             return const Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//     );
//   }
// }
