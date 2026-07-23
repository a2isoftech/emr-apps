import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class CompanyFormData {
  CompanyFormData({
    required String id,
    String? code,
    String? shortName,
    String? fullName,
  }) {
    this.id = ValueNotifier(id);
    this.code = ValueNotifier(code ?? '');
    this.shortName = ValueNotifier(shortName ?? '');
    this.fullName = ValueNotifier(fullName ?? '');
  }

  factory CompanyFormData.fromCompany(Company company) => CompanyFormData(
        id: company.id,
        code: company.code,
        shortName: company.shortName,
        fullName: company.fullName,
      );

  late final ValueNotifier<String> id;
  late final ValueNotifier<String> code;
  late final ValueNotifier<String> shortName;
  late final ValueNotifier<String> fullName;
}
