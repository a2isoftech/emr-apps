import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageProductEWCController extends AccountManagementBaseController {
  ManageProductEWCController({required this.coreApiService});

  final CoreApiService coreApiService;

  Account? account;
  ProductEWC? productEWC;

  final ValueNotifier<bool> canAdd = ValueNotifier(false);
  ValueNotifier<String> showErrorMessage = ValueNotifier('');

  EditProductEWCFormData? _formData;

  bool isInEditMode = false;

  EditProductEWCFormData get data {
    _formData ??= EditProductEWCFormData(null, '');
    return _formData!;
  }

  @override
  void reset() {
    processing = false;
    productEWC = null;

    _formData?.dispose();
    _formData = null;

    isInEditMode = false;

    notifyListeners();
  }

  @override
  void setAccount(Account? a) {
    account = a;
  }

  @override
  void dispose() {
    _formData?.dispose();
    _formData = null;

    isFormValid.dispose();
    canAdd.dispose();

    super.dispose();
  }

  void setProductEWC(ProductEWC? value) {
    isInEditMode = value != null;
    productEWC = value;

    _formData?.dispose();

    final newFormData = EditProductEWCFormData(
      value?.product,
      value?.eWCCode ?? '',
    );

    final existingEWCs = account?.productEWCCodes ?? [];
    newFormData.productEWCs
      ..clear()
      ..addAll(existingEWCs);

    _formData = newFormData;

    notifyListeners();
  }

  Future<List<Product>> getProducts(String searchText) {
    return coreApiService.pricingService.getProducts([], query: searchText);
  }

  Future<List<Product>> getAvailableProducts(String searchText) async {
    final allProducts = await getProducts(searchText);

    final usedProductCodes = <String>{
      for (final ewc in data.productEWCs) ewc.product.code,
    };

    if (productEWC != null) {
      usedProductCodes.remove(productEWC!.product.code);
    }

    return allProducts
        .where((product) => !usedProductCodes.contains(product.code))
        .toList();
  }

  @override
  Future<(bool success, String error)> add() async {
    final accountId = account?.code ?? account?.id;
    if (accountId == null || accountId.isEmpty) {
      return (false, 'Account not found');
    }

    final selectedProduct = data.product.value;
    if (selectedProduct == null) {
      return (false, 'Product not selected');
    }

    if (data.productEWCs.any((m) => m.product.code == selectedProduct.code)) {
      return (false, 'Product EWC already exists.');
    }

    final (success, error) = await coreApiService.accountService
        .addAccountProductEwc(
          Input$CreateOrUpdateAccountProductEwcInput(
            accountId: accountId,
            productEWC: [
              Input$ProductEwcCodeInput(
                key: 'products/${selectedProduct.code}',
                value: data.eWCCode.value ?? '',
              ),
            ],
          ),
        );

    if (success) {
      account!.productEWCCodes.add(
        ProductEWC(
          product: Product(
            id: 'products/${selectedProduct.code}',
            code: selectedProduct.code,
            description: selectedProduct.description,
          ),
          eWCCode: data.eWCCode.value ?? '',
        ),
      );
      notifyListeners();
    }

    return (success, error ?? '');
  }

  @override
  Future<(bool success, String error)> update() async {
    toggleProcessing(value: true);

    if (productEWC == null) {
      final result = await add();
      toggleProcessing();
      return result;
    }

    final accountId = account?.code ?? account?.id;
    if (accountId == null || accountId.isEmpty) {
      toggleProcessing();
      return (false, 'Product EWC not found');
    }

    final (success, error) = await coreApiService.accountService
        .updateAccountProductEwc(
          Input$CreateOrUpdateAccountProductEwcInput(
            accountId: accountId,
            productEWC: [
              Input$ProductEwcCodeInput(
                key: 'products/${productEWC!.product.code}',
                value: data.eWCCode.value ?? '',
              ),
            ],
          ),
        );

    if (success) {
      final existing = account?.productEWCCodes.firstWhereOrNull(
        (m) => m.product.code == productEWC!.product.code,
      );

      if (existing != null) {
        existing.eWCCode = data.eWCCode.value ?? '';
      }

      notifyListeners();
    }

    toggleProcessing();
    return (success, error ?? '');
  }

  @override
  Future<(bool success, String error)> delete() async {
    toggleProcessing(value: true);

    final accountId = account?.code ?? account?.id;
    if (accountId == null || accountId.isEmpty || productEWC == null) {
      toggleProcessing();
      return (false, 'Product EWC not found');
    }

    final (success, error) = await coreApiService.accountService
        .deleteAccountProductEwc(
          Input$DeleteAccountProductEwcInput(
            accountId: accountId,
            productKeys: ['products/${productEWC!.product.code}'],
          ),
        );

    if (success) {
      account?.productEWCCodes.removeWhere(
        (m) => m.product.code == productEWC!.product.code,
      );
      notifyListeners();
    }

    toggleProcessing();
    return (success, error ?? '');
  }
}
