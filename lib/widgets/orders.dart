import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Order List'),
        ),
        body: OrderHistory(),
      ),
    );
  }
}