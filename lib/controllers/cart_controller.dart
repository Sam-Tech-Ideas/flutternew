import 'package:fds/models/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final _products = {}.obs;
  // var cartItems = [].obs;
  // var total = 0.0.obs;
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

  get products => _products;
  // void addItem(item){
  //   cartItems.add(item);
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
