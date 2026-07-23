import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EditPublicationsFormData {
  EditPublicationsFormData({
    required this.allowedProducts,
    required this.allowedYards,
  });

  static KeyValuePair<String, String> defaultPublication = (key: '', value: '');

  late ValueNotifier<KeyValuePair<String, String>?> newPublication =
      ValueNotifier(defaultPublication);

  final List<AccountPublication> publications = [];

  final ValueNotifier<List<AllowedModel>> allowedProducts;

  final ValueNotifier<List<AllowedModel>> allowedYards;

  void reset() {
    newPublication = ValueNotifier(defaultPublication);
  }

  void addListeners(void Function() listener) {
    newPublication.addListener(listener);
  }

  void removeListeners(void Function() listener) {
    newPublication.removeListener(listener);
  }
}
