import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class ProductData {
  ProductData({
    required String id,
    required String code,
    required String description,
  })  : id = ValueNotifier(id),
        code = ValueNotifier(code),
        description = ValueNotifier(description);

  ProductData.fromProduct(Product product)
      : id = ValueNotifier(product.id),
        code = ValueNotifier(product.code),
        description = ValueNotifier(product.description);

  Product toProduct() =>
      Product(id: id.value, code: code.value, description: description.value);

  late final ValueNotifier<String> id;
  late final ValueNotifier<String> code;
  late final ValueNotifier<String> description;
}
