// import 'package:flutter/material.dart';

// class CheckoutPage extends StatefulWidget {
//   const CheckoutPage({super.key});

//   @override
//   State<CheckoutPage> createState() => _CheckoutPageState();
// }

// class _CheckoutPageState extends State<CheckoutPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             children: const [
//               Icon(Icons.arrow_back),
//             ],
//           ),
//         ),
//         actions: [
//           Row(
//             children: const [
//               Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Text(" Checkout"),
//               ),
//             ],
//           ),
//         ],
//       ),
//       body: Column(children: [
//         Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: ClipRRect
//           (
//             borderRadius:  BorderRadius.circular(20),
             
//             child: Container(
//               decoration: 
//               BoxDecoration(
//                 color: Colors.white,
              
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 5,
                    
//                     blurRadius: 7,
//                     offset: const Offset(0, 3), // changes position of shadow
//                   ),
//                 ],
//               ), 
            
//               height: 100,
//               color: Colors.white,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     "Order Summary",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.red,
//                       shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(20),
//                         ),
//                       ),
//                     ),
//                     child: const Text(
//                       "Add items",
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         )
//       ]),
//     );
//   }
// }
