import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/cheque_books/cheque_books_exports.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChequeBooksScreen extends StatefulWidget {
  const ChequeBooksScreen({super.key});

  @override
  State<ChequeBooksScreen> createState() => _ChequeBooksScreenState();
}

class _ChequeBooksScreenState extends State<ChequeBooksScreen> {
  final ChequeBooksController controller = ChequeBooksController();

  late final ChequeBooksFilterController _filterController;

  @override
  void initState() {
    super.initState();

    final userService = context.read<UserService>();

    _filterController = ChequeBooksFilterController(
      defaultTerritory: userService.user.territories!.first,
    );

    _filterController.filters.addListener(_onFiltersChanged);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(_filterController.onTerritoryChanged(context));
    });
  }

  @override
  void dispose() {
    _filterController.filters.removeListener(_onFiltersChanged);

    super.dispose();
  }

  void _onFiltersChanged() {
    final territoryFilter = _filterController.tryGetFilter<Territory>(
      key: ChequeBooksFilterController.kTerritory,
    )!;

    final companyBankAccountFilter = _filterController
        .tryGetFilter<CompanyBankAccount>(
          key: ChequeBooksFilterController.kCompanyBankAccount,
        );

    // If we haven't yet picked a bank account, don't do anything.
    if (companyBankAccountFilter?.value == null) {
      return;
    }

    // Default the bank account when the territory changes.
    final tc1 = territoryFilter.value!.code;
    final tc2 = companyBankAccountFilter!.value!.territoryCode;

    if (tc1 != tc2) {
      _filterController.onTerritoryChanged(context);

      return;
    }

    controller.onFiltersChanged(
      territoryFilter,
      companyBankAccountFilter,
      context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmrFilter(
          controller: _filterController,
          padding: const EdgeInsets.only(
            top: Insets.gutter,
            left: Insets.gutter,
            right: Insets.gutter,
          ),
          showAddFilter: false,
        ),
        const SizedBox(height: Insets.gutter),
        Expanded(
          child: ChequeBookRows(
            filterController: _filterController,
            controller: controller,
          ),
        ),
      ],
    );
  }
}
