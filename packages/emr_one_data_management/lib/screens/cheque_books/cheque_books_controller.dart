import 'package:collection/collection.dart';
import 'package:emr_core_api/extensions/build_context_extensions.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/widgets.dart';

class ChequeBooksController {
  ValueNotifier<List<ChequeBook>> chequeBooks = ValueNotifier([]);
  Yard? primaryYard;

  Future<void> onFiltersChanged(
    EmrFilterModel<Territory>? territoryFilter,
    EmrFilterModel<CompanyBankAccount>? companyBankAccountFilter,
    BuildContext context,
  ) async {
    // Make sure we have the necessary filters to perform a search.
    if (territoryFilter?.value == null ||
        companyBankAccountFilter?.value == null) {
      chequeBooks.value = [];
      return;
    }

    final yards = await context.coreApi.referenceData.yards(
      'YCEN',
      territories: [territoryFilter!.value!],
    );

    // Territory specific requirements for primary yards not yet given.
    primaryYard = yards.firstWhereOrNull((e) => e.yardCode == 'YCEN');

    if (context.mounted) {
      await getChequeBooks(companyBankAccountFilter, context);
    }
  }

  Future<void> getChequeBooks(
    EmrFilterModel<CompanyBankAccount>? companyBankAccountFilter,
    BuildContext context,
  ) async {
    final response = await context.coreApi.referenceData.searchChequeBooks(
      bankAccountCode: companyBankAccountFilter!.value!.code,
    );

    final data = response.data ?? [];

    // Sort by remaining, then by yard code.
    data.sort((a, b) {
      final remainingCompare = a.remaining.compareTo(b.remaining);
      if (remainingCompare != 0) return remainingCompare;

      return a.yardCode.compareTo(b.yardCode);
    });
    final primaryCode = primaryYard?.yardCode;

    final primary = primaryCode == null
        ? null
        : data.firstWhereOrNull((e) => e.yardCode == primaryCode);

    chequeBooks.value = [
      if (primary != null) primary,
      ...data.where((e) => e.yardCode != primaryCode),
    ];
  }
}
