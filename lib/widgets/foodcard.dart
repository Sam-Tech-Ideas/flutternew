// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class FoodCard extends StatefulWidget {
//   const FoodCard({super.key});

//   @override
//   State<FoodCard> createState() => _FoodCardState();
// }

// class _FoodCardState extends State<FoodCard> {
//   @override
//   Widget build(BuildContext context) {
//     final productSnapshot =
//         FirebaseFirestore.instance.collection('products').get();
//     return Container(
//       margin: const EdgeInsets.all(8),
//       width: 250,
//       height: 330,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(14),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//           ),
//         ],
//       ),
//       child: FutureBuilder(
//         future: productSnapshot,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final List<QueryDocumentSnapshot> products = snapshot.data!.docs;
//             if (products.isEmpty) {
//               return const Center(
//                 child: Text("No products"),
//               );
//             }
//             return ListView.separated(
//               scrollDirection: Axis.horizontal,
//               separatorBuilder: (context, index) => const SizedBox(
//                 width: 30,
//               ),
//               itemCount: products.length,
//               itemBuilder: (context, index) {
//                 final product = products[index].data() as Map<String, dynamic>;
//                 final productImageUrl = product['imageURL'];
//                 final productName = product['name'];

//                 final productPrice = product['price'];
//                 final productVendor = product['vendor'];
//                 return Card(
//                   child: Column(
//                     children: [
//                       Image.network(
//                         productImageUrl,
//                         fit: BoxFit.cover,
//                         height: 200,
//                         width: 250,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   productVendor,
//                                   style: const TextStyle(
//                                       fontSize: 14, color: Colors.grey),
//                                 ),
//                                 Align(
//                                   alignment: Alignment.centerRight,
//                                   child: Text(
//                                       "\$${productPrice.toStringAsFixed(2)}",
//                                       style: const TextStyle(
//                                         fontSize: 16,
//                                         color: Colors.red,
//                                       )),
//                                 )
//                               ],
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 8.0,
//                               ),
//                               child: Text(productName,
//                                   style: const TextStyle(
//                                       fontSize: 24,
//                                       fontWeight: FontWeight.w400)),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 4.0,
//                                 bottom: 0,
//                               ),
//                               child: Row(
//                                 children: const [
//                                   Icon(
//                                     Icons.motorcycle_outlined,
//                                     size: 16,
//                                     color: Colors.grey,
//                                   ),
//                                   Text(
//                                     " 5-10 mins",
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       color: Colors.grey,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             );
//           }
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//       ),
//     );
//   }
// }
