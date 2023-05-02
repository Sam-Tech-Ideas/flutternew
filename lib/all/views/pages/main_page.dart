// import 'package:fds/views/screens/na_screens/cart_screen.dart';
// import 'package:fds/views/screens/na_screens/home.dart';
// import 'package:flutter/material.dart';

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   List pages = [ HomeScreen(), const CartScreen()];

//   int currentIndex = 0;

//   void onTap(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: pages[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: onTap,
//         currentIndex: currentIndex,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         selectedItemColor: Colors.red,
//         unselectedItemColor: Colors.black38,
//         elevation: 0,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart_checkout_outlined),
//             label: 'Orders',
//           ),
//           // BottomNavigationBarItem(
//           //   icon: Icon(Icons.search_outlined),
//           //   label: 'Search',
//           // ),
//           // BottomNavigationBarItem(
//           //   icon: Icon(Icons.person),
//           //   label: 'Profile',
//           // ),
//         ],
//       ),
//     );
//   }
// }
