



import '../entities/product.dart';

abstract class ProductRepository{


  Future<Product>   getAllProducts(Product product);
  Future getCategorisedByLocation();
  Future getCategorisedProducts();
  Future searchProducts();


}