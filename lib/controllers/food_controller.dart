

import 'package:get/get.dart';

import '../models/food_model.dart';

class CartController extends GetxController{
  //add a dict
  var _products = {}.obs;


void addProduct(Product product){
  if(_products.containsKey(product)){
    _products[product]  += 1;
  }else{
    _products[product] = 1;
  }
}

}