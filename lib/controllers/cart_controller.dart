import 'package:get/get.dart';

import '../models/food_model.dart';

class CartController extends GetxController {
  //add a dict
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
      _products.removeWhere(((key, value) => key == product));
    }
    else if(_products.containsKey(product) && _products[product] > 1){
      _products[product] -= 1;
    }

  }



  get products => _products;
}
