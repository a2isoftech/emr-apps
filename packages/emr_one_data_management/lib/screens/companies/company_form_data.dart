import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class CompanyFormData {
  CompanyFormData({
    required String id,
    required String code,
    required String fullName,
    required String shortName,
    required Territory territory,
    required bool active,
    required double valueRequiredForTwoSignaturesOnCheque,
    required List<String> chequeSignatures,
  }) {
    this.id = ValueNotifier(id);
    this.code = ValueNotifier(code);
    this.fullName = ValueNotifier(fullName);
    this.shortName = ValueNotifier(shortName);
    this.territory = ValueNotifier(territory);
    this.active = ValueNotifier(active);
    this.valueRequiredForTwoSignaturesOnCheque = ValueNotifier(
      valueRequiredForTwoSignaturesOnCheque,
    );
    this.chequeSignatures = ValueNotifier(chequeSignatures);
  }

  factory CompanyFormData.fromCompany(Company company) => CompanyFormData(
    id: company.id,
    code: company.code,
    fullName: company.fullName,
    shortName: company.shortName,
    territory: company.territory ?? const Territory('', '', []),
    active: company.active,
    valueRequiredForTwoSignaturesOnCheque:
        company.valueRequiredForTwoSignaturesOnCheque,
    chequeSignatures: company.chequeSignatures,
  );

  Company toCompany() => Company(
    code: code.value,
    shortName: shortName.value,
    fullName: fullName.value,
    territoryCode: territory.value.code,
    territoryId: territory.value.id!,
    id: id.value,
    territory: territory.value,
    active: active.value,
    valueRequiredForTwoSignaturesOnCheque:
        valueRequiredForTwoSignaturesOnCheque.value,
    chequeSignatures: chequeSignatures.value,
  );

  late final ValueNotifier<String> id;
  late final ValueNotifier<String> code;
  late final ValueNotifier<String> fullName;
  late final ValueNotifier<String> shortName;
  late final ValueNotifier<Territory> territory;
  late final ValueNotifier<bool> active;
  late final ValueNotifier<double> valueRequiredForTwoSignaturesOnCheque;
  late final ValueNotifier<List<String>> chequeSignatures;
}
