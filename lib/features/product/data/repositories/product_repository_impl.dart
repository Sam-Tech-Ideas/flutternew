import 'package:fds/features/product/domain/entities/product.dart';

import '../../domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<Product>> getAllProducts() async {
    // TODO: implement getAllProducts
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getCategorisedByLocation() async{
    // TODO: implement getCategorisedByLocation
    throw UnimplementedError();
  }

  @override 
  Future<List<Product>> getCategorisedProducts()  async{
    // TODO: implement getCategorisedProducts
    throw UnimplementedError();
  }

  @override
  Future searchProducts() async{
    // TODO: implement searchProducts
    throw UnimplementedError();
  }

}
