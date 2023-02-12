import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String location;
  // final String vendor;

  const FoodCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.description,
    // required this.vendor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: 250,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
          ),
        ],
      ),
      child: Column(
        children: [
          Card(
            child: Image.asset(
              './images/am.jpg',
              fit: BoxFit.cover,
              height: 180,
              width: 250,
            ),
          ),
        ],
      ),
    );
  }
}
