import 'package:collection/collection.dart';
import 'package:emr_core_api/services/core_api_service.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/pricing/publication.dart';
import 'package:flutter/material.dart';

class ManagePublicationsController extends AccountManagementBaseController {
  ManagePublicationsController({required this.coreApiService});

  Account? account;
  AccountPublication? publication;

  final CoreApiService coreApiService;

  List<Publication> _publicationsFromDb = [];

  List<KeyValuePair<String, Map<String, String>>> _products = [];

  List<KeyValuePair<String, Map<String, String>>> _yards = [];

  final ValueNotifier<bool> canAddPublication = ValueNotifier(false);

  EditPublicationsFormData? _formData;

  EditPublicationsFormData get data =>
      _formData ??
      EditPublicationsFormData(
        allowedProducts: ValueNotifier([]),
        allowedYards: ValueNotifier([]),
      );

  ValueNotifier<bool> isInEditMode = ValueNotifier(false);

  Future<Account?> getAccount(String code, String? publicationId) async {
    final (account, errorCode, error) = await coreApiService.accountService
        .getAccountInfo(code);

    await publications([]);

    if ((publicationId ?? '').isNotEmpty) {
      final publication = account?.publications.firstWhereOrNull(
        (p) => p.publication.id == publicationId,
      );
      _setProductsAndYards(
        publication?.publication.availableProducts ?? [],
        publication?.publication.availableYards ?? [],
      );
    }

    return account;
  }

  @override
  void reset() {
    processing = false;
    _formData = null;
    notifyListeners();
  }

  @override
  void setAccount(Account? a) {
    account = a;
  }

  void setPublication(AccountPublication? p) {
    publication = p;

    _formData = EditPublicationsFormData(
      allowedProducts: ValueNotifier(allowedProductsModels()),
      allowedYards: ValueNotifier(allowedYardsModels()),
    );

    _formData!.publications.addAll(
      (account?.publications ?? []).map(
        (m) => AccountPublication(
          publication: m.publication,
          allowedProducts: m.allowedProducts,
        ),
      ),
    );

    if (publication != null) {
      final existingPublication = _publicationsFromDb.firstWhereOrNull(
        (x) => x.id == publication?.publication.id,
      );

      final kvp = (
        key: existingPublication?.id ?? '',
        value: existingPublication?.name ?? '',
      );

      _formData?.newPublication.value = kvp;

      isInEditMode.value = true;
    } else {
      isInEditMode.value = false;
    }

    _formData!.newPublication.addListener(publicationChanged);
  }

  List<AllowedModel> allowedProductsModels() {
    return _products.map((p) {
      return AllowedModel(
        selected: ValueNotifier(
          (publication?.allowedProducts.productIds ?? []).any(
            (ap) => ap == p.key,
          ),
        ),
        id: p.key,
        values: p.value,
      );
    }).toList();
  }

  List<AllowedModel> allowedYardsModels() {
    return _yards.map((p) {
      return AllowedModel(
        selected: ValueNotifier(
          (publication?.allowedProducts.yardIds ?? []).any((ap) => ap == p.key),
        ),
        id: p.key,
        values: p.value,
      );
    }).toList();
  }

  Future<void> publicationChanged() async {
    final selected = data.newPublication.value;

    if (selected == null || selected.key.isEmpty) {
      _products = [];
      _yards = [];
      _formData!.allowedProducts.value = [];
      _formData!.allowedYards.value = [];
      notifyListeners();
      return;
    }

    final selectedPublication =
        (await coreApiService.pricingService.getPublicationsById([
          data.newPublication.value!.key,
        ])).firstOrNull;
    _setProductsAndYards(
      selectedPublication?.availableProducts ?? [],
      selectedPublication?.availableYards ?? [],
    );
    _formData!.allowedProducts.value = allowedProductsModels();
    _formData!.allowedYards.value = allowedYardsModels();
    notifyListeners();
  }

  @override
  void dispose() {
    // Clean up listeners
    isFormValid.dispose();
    canAddPublication.dispose();
    super.dispose();
  }

  void _setProductsAndYards(
    List<Product> availableProducts,
    List<Yard> availableYards,
  ) {
    _products = availableProducts
        .map(
          (p) => (
            key: p.id,
            value: {'code': p.code, 'description': p.description},
          ),
        )
        .toList();

    _yards = availableYards
        .map(
          (p) => (
            key: p.id ?? 'yards/${p.yardCode}',
            value: {'code': p.yardCode, 'description': p.name},
          ),
        )
        .toList();
  }

  Future<List<KeyValuePair<String, String>>> publications(
    List<String> excludedPublicationIds,
  ) async {
    if (_publicationsFromDb.isEmpty) {
      _publicationsFromDb = await coreApiService.accountService
          .getAllPublications();
    }
    return _publicationsFromDb
        .where(
          (publication) => !excludedPublicationIds.contains(publication.id),
        )
        .map((publication) => (key: publication.id, value: publication.name))
        .toList();
  }

  Future<(bool success, String error)> savePriority(
    Account? copyOfAccount,
  ) async {
    account = copyOfAccount;
    return updateAccountPublications(copyOfAccount!.publications);
  }

  @override
  Future<(bool success, String error)> update() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    final selectedPublication = _publicationsFromDb.firstWhereOrNull(
      (m) => m.id == data.newPublication.value!.key,
    );

    if (selectedPublication == null) {
      toggleProcessing();
      return (false, 'Publication not found');
    }

    final updatedAllowedProducts = PublicationAllowedProducts(
      productIds: data.allowedProducts.value
          .where((p) => p.selected.value)
          .map((d) => d.id)
          .toList(),
      yardIds: data.allowedYards.value
          .where((p) => p.selected.value)
          .map((d) => d.id)
          .toList(),
    );

    if (isInEditMode.value) {
      final accountIndex = account!.publications.indexWhere(
        (p) => p.publication.id == selectedPublication.id,
      );

      if (accountIndex != -1) {
        account!.publications[accountIndex] = AccountPublication(
          publication: selectedPublication,
          allowedProducts: updatedAllowedProducts,
        );
      }

      final dataIndex = data.publications.indexWhere(
        (p) => p.publication.id == selectedPublication.id,
      );

      if (dataIndex != -1) {
        data.publications[dataIndex] = AccountPublication(
          publication: selectedPublication,
          allowedProducts: updatedAllowedProducts,
        );
      }
    } else {
      final newAccountPublication = AccountPublication(
        publication: selectedPublication,
        allowedProducts: updatedAllowedProducts,
      );

      data.publications.add(newAccountPublication);
      account!.publications.add(newAccountPublication);
    }

    final (success, error) = isInEditMode.value
        ? await setAllowedProducts(data.publications)
        : await updateAccountPublications(data.publications);

    toggleProcessing();

    return (success, error);
  }

  Future<(bool success, String error)> updateAccountPublications(
    List<AccountPublication> publications,
  ) async {
    final (success, error) = await coreApiService.accountService
        .updateAccountPublications(account!.code!, account!.id!, publications);

    return (success, error ?? '');
  }

  Future<(bool success, String error)> setAllowedProducts(
    List<AccountPublication> publications,
  ) async {
    final (success, error) = await coreApiService.pricingService
        .setAllowedProducts(account!.id!, publications);

    return (success, error ?? '');
  }

  @override
  Future<(bool success, String error)> delete() async {
    if (publication == null || _formData == null) {
      return (false, 'No publication is set to be deleted');
    }

    final pubId = publication!.publication.id;

    data.publications.removeWhere(
      (m) => m.publication.id == pubId,
    );

    if (_publicationsFromDb.isEmpty) {
      await publications([]);
    }

    account!.publications.removeWhere(
      (t) => t.publication.id == pubId,
    );

    final (success, error) = await coreApiService.accountService
        .updateAccountPublications(
          account!.code!,
          account!.id!,
          data.publications,
        );

    toggleProcessing();

    return (success, error ?? '');
  }

  @override
  Future<(bool, String)> add() {
    throw UnimplementedError();
  }

  void refreshScreen() {
    notifyListeners();
  }
}
