// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Product {
  final String id;
  final String name;
  final String description;
  final String location;
  final String vendor;
  final double price;
  final String deliveryTime;
  final String campusLocation;
  final String category;

  Product(
    this.id,
    this.name,
    this.description,
    this.location,
    this.vendor,
    this.price,
    this.deliveryTime,
    this.campusLocation,
    this.category,
  );

  Product copyWith({
    String? id,
    String? name,
    String? description,
    String? location,
    String? vendor,
    double? price,
    String? deliveryTime,
    String? campusLocation,
    String? category,
  }) {
    return Product(
      id ?? this.id,
      name ?? this.name,
      description ?? this.description,
      location ?? this.location,
      vendor ?? this.vendor,
      price ?? this.price,
      deliveryTime ?? this.deliveryTime,
      campusLocation ?? this.campusLocation,
      category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'location': location,
      'vendor': vendor,
      'price': price,
      'deliveryTime': deliveryTime,
      'campusLocation': campusLocation,
      'category': category,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      map['id'] as String,
      map['name'] as String,
      map['description'] as String,
      map['location'] as String,
      map['vendor'] as String,
      map['price'] as double,
      map['deliveryTime'] as String,
      map['campusLocation'] as String,
      map['category'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Product(id: $id, name: $name, description: $description, location: $location, vendor: $vendor, price: $price, deliveryTime: $deliveryTime, campusLocation: $campusLocation, category: $category)';
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.location == location &&
      other.vendor == vendor &&
      other.price == price &&
      other.deliveryTime == deliveryTime &&
      other.campusLocation == campusLocation &&
      other.category == category;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      location.hashCode ^
      vendor.hashCode ^
      price.hashCode ^
      deliveryTime.hashCode ^
      campusLocation.hashCode ^
      category.hashCode;
  }
}
