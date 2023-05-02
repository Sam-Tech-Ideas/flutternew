// import 'package:fds/auth/firebase.dart';
// import 'package:flutter/material.dart';

// import 'main_page.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               Image.asset(
//                 'images/groc.png',
//                 width: 200,
//                 height: 200,
//               ),
//               const Text("Let's you in",
//                   style: TextStyle(
//                     fontSize: 33,
//                     fontWeight: FontWeight.bold,
//                   )),

//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton.icon(
//                   onPressed: () async {
//                     try {
//                       final userDetails = await signIn();
//                       if (mounted) {
//                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                             content: Text(
//                           "Signed in with Google ${userDetails.displayName}",
//                         )));

//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const MainPage()),
//                         );
//                       }
//                     } catch (e) {
//                       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                           content: Text(
//                         "There was an error signing in with Google",
//                       )));
//                     }
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     foregroundColor: Colors.black,
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 50, vertical: 20),
//                     side: const BorderSide(color: Colors.black12, width: 1),
//                     elevation: 0,
//                   ),
//                   icon: Image.asset(
//                     'images/G.png',
//                     width: 20,
//                     height: 20,
//                   ),
//                   label: const Text(
//                     "Continue with Google",
//                     style: TextStyle(
//                       fontSize: 14,
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(
//                 height: 10,
//               ),

//               Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
//                 Divider(
//                   thickness: 3,
//                   color: Colors.red,
//                 ),
//                 Text(
//                   "or",
//                   style: TextStyle(
//                     fontSize: 20,
//                   ),
//                 ),
//                 Divider(
//                   thickness: 1,
//                 ),
//               ]),

//               //  style: ElevatedButton.styleFrom(
//               //    backgroundColor: Colors.white,
//               //    foregroundColor: Colors.black,
//               //    shape: RoundedRectangleBorder(
//               //      borderRadius: BorderRadius.circular(30),

//               const SizedBox(
//                 height: 10,
//               ),

//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red,
//                   foregroundColor: Colors.white,
//                   shape: const StadiumBorder(),
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 34, vertical: 16),
//                   // side: const BorderSide(color: Colors.black12, width: 1),
//                   elevation: 0,
//                 ),
//                 child: const Text(
//                   "Sign in with Email and Password",
//                   style: TextStyle(
//                     fontSize: 14,
//                   ),
//                 ),
//               ),

//               const SizedBox(
//                 height: 10,
//               ),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     "Don't have an account?",
//                     style: TextStyle(
//                       fontSize: 10,
//                     ),
//                   ),
//                   TextButton(
//                       onPressed: () {},
//                       child: const Text(
//                         "Sign up",
//                       ))
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
