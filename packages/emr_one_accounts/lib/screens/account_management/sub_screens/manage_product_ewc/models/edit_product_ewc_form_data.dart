import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EditProductEWCFormData {
  EditProductEWCFormData(
    Product? product,
    String? eWCCode,
  ) {
    this.product = ValueNotifier(product);
    this.eWCCode = ValueNotifier(eWCCode);
  }

  late final ValueNotifier<Product?> product;

  late final ValueNotifier<String?> eWCCode;

  late final List<ProductEWC> productEWCs = [];

  void dispose() {
    product.dispose();
    eWCCode.dispose();
  }
}
