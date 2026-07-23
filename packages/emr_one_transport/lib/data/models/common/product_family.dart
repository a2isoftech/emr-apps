import 'package:emr_one_transport/data/models/common/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_family.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ProductFamily {
  ProductFamily({
    this.code,
    this.products,
    this.active,
  });

  factory ProductFamily.fromJson(Map<String, dynamic> json) =>
      _$ProductFamilyFromJson(json);

  Map<String, dynamic> toJson() => _$ProductFamilyToJson(this);

  String? code;
  List<Product>? products;
  bool? active;
}
