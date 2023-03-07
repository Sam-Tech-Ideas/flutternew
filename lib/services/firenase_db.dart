// import 'package:cloud_firestore/cloud_firestore.dart';

// import '../models/food_model.dart';

// class FirestoreDB{
// final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

// Stream<List<Product>> getAllProducts(){
//   return _firebaseFirestore.collection('products').snapshots().map((snapshot) => snapshot.docs.map((doc) => Product.fromSnapshot(doc)).toList());
// }
// }