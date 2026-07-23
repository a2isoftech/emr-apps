import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_inventory/models/production/product.dart';
import 'package:emr_one_inventory/models/production/production_api_response.dart';
import 'package:emr_one_inventory/services/production/bom_service.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class CreateEditBomController {
  CreateEditBomController({required this.bomservice});

  final BomService bomservice;

  final showLoader = signal(false);
  final formKey = GlobalKey<FormState>();

  final ValueNotifier<String?> id = ValueNotifier(null);
  final ValueNotifier<String> title = ValueNotifier('');
  final ValueNotifier<List<Product>> inputProducts = ValueNotifier([]);
  final ValueNotifier<List<Product>> outputProducts = ValueNotifier([]);

  void initFields({
    required String id,
    required String title,
    required List<Product> inputProducts,
    required List<Product> outputProducts,
  }) {
    this.id.value = id;
    this.title.value = title;
    this.inputProducts.value = inputProducts;
    this.outputProducts.value = outputProducts;
  }

  void removeOutputProducts(String id) {
    outputProducts.value = [
      ...outputProducts.value.whereNot((x) => x.id == id),
    ];
  }

  void removeInputProducts(String id) {
    inputProducts.value = [...inputProducts.value.whereNot((x) => x.id == id)];
  }

  void addInputProducts(List<Product> selectedProducts) {
    inputProducts.value = [...selectedProducts];
  }

  void addOutputProducts(List<Product> selectedProducts) {
    outputProducts.value = [...selectedProducts];
  }

  (bool, String) validate(BuildContext context) {
    final isDetailsValid = formKey.currentState?.validate() ?? false;
    if (!isDetailsValid) {
      return (false, context.l10n.validationFillBasicDetails);
    }

    if (inputProducts.value.isEmpty) {
      return (false, context.l10n.validationAddRawMaterials);
    }

    if (outputProducts.value.isEmpty) {
      return (false, context.l10n.validationAddFinishedGoods);
    }

    return (true, '');
  }

  Future<ProductionApiResponse<void>> save(String? id) {
    return id != null ? updateBom(id) : createBom();
  }

  Future<ProductionApiResponse<void>> updateBom(String id) {
    return bomservice.updateBom(
      Input$UpdateBomInput(
        id: 'billOfMaterials/$id',
        title: title.value,
        inputProducts: _mapProductsToInput(inputProducts.value),
        outputProducts: _mapProductsToInput(outputProducts.value),
      ),
    );
  }

  Future<ProductionApiResponse<void>> createBom() {
    return bomservice.createBom(
      Input$CreateBomInput(
        title: title.value,
        inputProducts: _mapProductsToInput(inputProducts.value),
        outputProducts: _mapProductsToInput(outputProducts.value),
      ),
    );
  }

  List<Input$BomProductInput> _mapProductsToInput(List<Product> products) {
    return [
      ...products.map(
        (product) => Input$BomProductInput(
          productId: product.id,
          productCode: product.code,
        ),
      ),
    ];
  }
}
