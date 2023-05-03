import '../../domain/entities/product.dart';

abstract class ProductRemoteDataSource {
  Future<List<Product>> getAllProducts();
    Future<List<Product>>  getCategorisedByLocation();
  Future<List<Product>> getCategorisedProducts();
  Future<Product> search();
  
}


class ProductRemoteDataSourceImpl implements ProductRemoteDataSource{
  @override
  Future<List<Product>> getAllProducts() async{
    // TODO: implement getAllProducts
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getCategorisedByLocation() async{
    // TODO: implement getCategorisedByLocation
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getCategorisedProducts() async {
    // TODO: implement getCategorisedProducts
    throw UnimplementedError();
  }

  @override
  Future<Product> search() {
    // TODO: implement search
    throw UnimplementedError();
  }

}
  
