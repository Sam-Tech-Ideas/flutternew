// class CartItem {
//   final String id;
//   final String name;
//   final int quantity;
//   final double price;

//   CartItem({
//     required this.id,
//     required this.name,
//     required this.quantity,
//     required this.price,
//   });

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'name': name,
//       'quantity': quantity,
//       'price': price,
//     };
//   }
// }



// class Cart {
//   List<CartItem> _items = [];

//   List<CartItem> get items => _items;

//   void addItem(CartItem item) {
//     _items.add(item);
//   }

//   void removeItem(String id) {
//     _items.removeWhere((item) => item.id == id);
//   }

//   void clear() {
//     _items.clear();
//   }

//   double get total {
//     return _items.fold(0, (total, item) => total + item.price * item.quantity);
//   }
// }
// ///hhhhhhhhhhhhhhhh
// final cart = Cart();

// final item = CartItem(
//   id: 'item1',
//   name: 'Item 1',
//   quantity: 1,
//   price: 9.99,
// );

// cart.addItem(item);
// ////
// ///
// ///
// ///
// ///
// final firestore = FirebaseFirestore.instance;

// void saveCart(List<CartItem> items) {
//   final collection = firestore.collection('carts');
//   final mapList = items.map((item) => item.toMap()).toList();

//   collection.add({
//     'items': mapList,
//   });
// }
// ////
// saveCart(cart.items);
// ////
