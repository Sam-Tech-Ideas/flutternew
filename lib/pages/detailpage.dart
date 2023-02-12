import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_outline),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
          )
        ],
      ),
      body:
       
       SafeArea(
        child: SingleChildScrollView(
        
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'images/am.jpg',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Chinese burger",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Ghc. 12",
                    style: TextStyle(fontSize: 14, color: Colors.red),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "DailyBites Restaurant",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.star_outline,
                        size: 18,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("4.5"),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 18,
                      ),
                      Text(
                        "Ayeduase",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.motorcycle_outlined,
                        size: 18,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("15-20 min"),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            
           
            ),

          
            
            // Container(
            //   padding: const EdgeInsets.all(16),
            //   color: Colors.grey[200],

            //   child: Row(

            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Expanded(
            //         child: Text(
            //           'Quantity: ${getQuantity()}',
            //           style: const TextStyle(
            //             fontSize: 16,
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         child: GestureDetector(
            //           onTap: () {
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => const CustomerPage(),
            //               ),
            //             );
            //           },
            //           child: Text(
            //             'Total: \$${getTotalPrice()}',
            //             style: const TextStyle(
            //               fontSize: 16,
            //               color: Colors.red,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
          
        ),

        
      ),
    
    ),
    );

  }

  int getQuantity() {
    // get the quantity of items in the cart
    return 5;
  }

  double getTotalPrice() {
    // get the total price of items in the cart
    return 45.0;
  }
}
