 import 'package:cloud_firestore/cloud_firestore.dart';

 import '../models/product_model.dart';

 class FireStoreDB {
   final Firebase_firebaseFirestore = FirebaseFirestore.instance;

  Stream<List<Product>> getAllProducts() {
     return Firebase_firebaseFirestore.collection('products').snapshots().map(
         (snapshot){
            return snapshot.docs.map((doc) => Product.fromSnapShot(doc)).toList();
          
          }
      );
    }
  }
