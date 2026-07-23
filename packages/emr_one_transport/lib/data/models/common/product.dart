import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Product {
  Product({
    required this.code,
    this.id,
    this.description,
    this.active,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  Product copyWith({
    String? id,
    String? code,
    String? description,
    bool? active,
  }) {
    return Product(
      id: id ?? this.id,
      code: code ?? this.code,
      description: description ?? this.description,
      active: active ?? this.active,
    );
  }

  String? id;
  String code;
  String? description;
  bool? active;
}
