


import 'package:flutter/foundation.dart';

import '../pages/try.dart';

class CartModel extends ValueNotifier<Cart> {
  CartModel(Cart cart) : super(cart);

  void addItemToCart(String item) {
    Cart cart = value;
    cart.addItem(item);
    notifyListeners();
  }
}
