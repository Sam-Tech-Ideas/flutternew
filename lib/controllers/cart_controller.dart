import 'package:fds/models/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
      'Added to cart',
      '${product.name} added to cart',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }
  
  void removeProduct(Product product){
    if(_products.containsKey(product) && _products[product] == 1){
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }
  get products => _products;


  get productSubtotal => _products.entries.map((product) => product.key.price * product.value).toList();

  get total => _products.entries.map((product) => product.key.price * product.value).toList().reduce((value, element) => value + element).toStringAsFixed(2); 
  // final _products = {}.obs;
  // // var cartItems = [].obs;
  // // var total = 0.0.obs;
  // void addProduct(Product product) {
  //   if (_products.containsKey(product)) {
  //     _products[product] += 1;
  //   } else {
  //     _products[product] = 1;
  //   }
  //   Get.snackbar(
  //     'Added to cart',
  //     '${product.name} added to cart',
  //     snackPosition: SnackPosition.BOTTOM,
  //     duration: const Duration(seconds: 2),
  //   );

  // }

  // void removeProduct(Product product) {
  //   if (_products.containsKey(product) && _products[product] == 1){
  //      _products.removeWhere((key, value) => key == product);
  //   } else {
  //     _products[product] -= 1;

  //   }
  // }

  // get products => _products;

  // get productSubtotal => _products.entries.map((product) => product.key.price * product.value).toList();

  // get total => _products.entries.map((product) => product.key.price * product.value).toList().reduce((value, element) => value + element).toStringAsFixed(2);
  // // void addItem(item){
  // //   cartItems.add(item);
  //   total.value += item.price * item.quantity;
  // }

  // void removeItem(item){
  //   cartItems.remove(item);
  //   total.value -= item.price * item.quantity;
  // }

  // void clear(){
  //   cartItems.clear();
  //   total.value = 0.0;
  // }
}
