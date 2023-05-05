import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

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
    final productsData = await <FirebaseFirestore.instance.collection('products').get();
    return productsData,docs.map((e) => Product.fromMap(item.data).toList();
    )
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
  
