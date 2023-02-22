import 'package:flutter/cupertino.dart';

import 'item.dart';

class CartModel extends ChangeNotifier {
  final List<Item> _items = [];

  List<Item> get items => _items;

  void addItem(Item item) {
    _items.add(item);
    //notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    //notifyListeners();
  }

  void updateItemQuantity(Item item, int quantity) {
    item.quantity = quantity;
    //notifyListeners();
  }
}
