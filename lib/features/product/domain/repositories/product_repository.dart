



import '../entities/product.dart';

abstract class ProductRepository{


  Future<List<Product>>   getAllProducts();
  Future <List<Product>> getCategorisedByLocation();
  Future <List<Product>> getCategorisedProducts();
  Future searchProducts();


}