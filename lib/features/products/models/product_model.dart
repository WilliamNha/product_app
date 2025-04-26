import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final List<Product>? products;
  ProductModel({
    required this.products,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable()
class Product {
  final String? title;
  final String? brand;
  final double? price;
  final double? discountPercentage;
  final double? rating;
  final String? thumbnail;
  Product(
      {required this.title,
      required this.brand,
      required this.price,
      required this.discountPercentage,
      required this.rating,
      required this.thumbnail});

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
