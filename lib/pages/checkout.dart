import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [

        Row(
          children: [
            Text("Order Summary", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ElevatedButton(onPressed: () {}, child: Text("Add items")),
          ],

        )
      ]) ,
    );
  }
}