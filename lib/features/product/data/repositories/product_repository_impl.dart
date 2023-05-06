import 'package:fds/features/product/domain/entities/product.dart';

import '../../domain/repositories/product_repository.dart';
import '../data source/product_remote_db.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepositoryImpl(this.productRemoteDataSource);



  @override
  Future<List<Product>> getAllProducts() async {
    // TODO: implement getAllProducts
    try {
      final results = await productRemoteDataSource.getAllProducts();
      return results;
    } catch (e) {
      throw e;
    }
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
