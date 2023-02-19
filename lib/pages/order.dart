import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Order {
  final String id;
  final String name;
  final String vendor;
  final double totalAmount;
  final String quantity;
  final String imageUrl;

  Order({
    required this.id,
    required this.name,
    required this.vendor,
    required this.quantity,
    required this.totalAmount,
    required this.imageUrl,
  });
}

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  final List<Order> _orders = [
    Order(
      id: '1',
      name: 'Fufu',
      vendor: 'Burger King',
      quantity: '2',
      totalAmount: 123.45,
      imageUrl:
          'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/6:4/w_3756,h_2504,c_limit/Smashburger-recipe-120219.jpg',
    ),
    Order(
      id: '2',
      name: 'Pizza',
      vendor: 'Burger King',
      quantity: '2',
      totalAmount: 678.90,
      imageUrl:
          'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/6:4/w_3756,h_2504,c_limit/Smashburger-recipe-120219.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order List'),
      ),
      body: ListView.builder(
        itemCount: _orders.length,
        itemBuilder: (BuildContext context, int index) {
          return Slidable(
            endActionPane: ActionPane(
                openThreshold: 0.7,
                motion: const StretchMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {},
                    icon: Icons.delete,
                    backgroundColor: Colors.red,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: SizedBox(
                height: 100,
                child: Card(
                  child: ListTile(
                    leading: Image.network(
                      _orders[index].imageUrl,
                      height: 40,
                    ),
                    title: Text(_orders[index].name),
                    subtitle: Text(_orders[index].vendor),
                    trailing: Text(
                        '\$${_orders[index].totalAmount.toStringAsFixed(2)}'),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
