import 'dart:async';
import 'dart:collection';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:psnop/components/planned_movements/filter/planned_movements_filter_controller.dart';
import 'package:psnop/models/planned_movements/planned_movement_response_model.dart';
import 'package:psnop/models/planned_movements/planned_movements.dart';
import 'package:psnop/models/planned_movements/planned_movements_search.dart';
import 'package:psnop/models/planned_movements/route_to_market_model.dart';
import 'package:psnop/models/planned_movements/update_dates_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/planned_movements_repository.dart';

class PlannedMovementsGridController {
  PlannedMovementsGridController({
    required this.client,
    required this.appConfig,
    required this.filterController,
  }) {
    filterController.filters.addListener(searchChanged);
    searchChanged();
  }

  final BaseClient client;
  final AppConfig appConfig;
  final ValueNotifier<List<PlannedMovements>> _data = ValueNotifier([]);
  late final PsnopApiHelper apiHelper =
      PsnopApiHelper(config: appConfig, httpClient: client);
  final PlannedMovementsFilterController filterController;
  late EmrGridController<PlannedMovements> gridController =
      EmrGridController(data: _data);

  ValueNotifier<bool> busy =
      ValueNotifier(false); // Show the spinner when the page loads.
  bool noFilters = true;
  final selectedRows = HashSet<PlannedMovements>.identity();
  ValueNotifier<bool> rowSelected = ValueNotifier(false);
  void dispose() {
    filterController.filters.removeListener(searchChanged);
  }

  Future<List<PlannedMovements>> searchChanged() async {
    selectedRows.clear();
    rowSelected.value = false;
    final filters = await filterController.getCurrentFilters();
    if (filters == null) return [];
    busy.value = true;
    noFilters = false;
    await getPlannedMovements(
      searchModel: filters,
      repository: PlannedMovementsRepository(apiHelper: apiHelper),
    );
    busy.value = false;
    return _data.value;
  }

  Future<void> getPlannedMovements({
    required PlannedMovementsSearchModel searchModel,
    required PlannedMovementsRepository repository,
  }) async {
    final response = await repository.fetchPlanningViewPlannedMovements(
      filter: searchModel,
    );
    if (response != null) {
      _data.value = response.plannedMovements;
    } else {
      _data.value = [];
    }
  }

  Future<bool> updateRequestedDate(
    List<PlannedMovements> plannedMovements,
    DateTime newRequestedDate,
  ) async {
    final repository = PlannedMovementsRepository(apiHelper: apiHelper);
    final updateDatesModel = UpdateDatesModel(
      plannedMovements: plannedMovements,
      newRequestedDate: newRequestedDate,
    );
    final response = await repository.updateRequestedDateForMovements(
      updateDatesModel,
    );
    if (response != null) {
      final isSuccessful = bool.tryParse(String.fromCharCodes(response));
      if (isSuccessful != null) return isSuccessful;
    }
    return false;
  }

  Future<void> changeSelectedDates(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(9999),
      initialEntryMode: DatePickerEntryMode.input,
    );
    if (pickedDate != null) {
      busy.value = true;
      final isSuccessful =
          await updateRequestedDate(selectedRows.toList(), pickedDate);
      if (isSuccessful) {
        await searchChanged();
      }
      busy.value = false;
      if (context.mounted) {
        showSnackBarResponse(
          context: context,
          message: isSuccessful
              ? context.l10n.psnopPlannedMovementsRequestedDateUpdateSuccess
              : context.l10n.psnopPlannedMovementsRequestedDateUpdateFailure,
          color: isSuccessful ? null : Theme.of(context).colorScheme.error,
        );
      }
    }
  }

  Future<bool> addRouteToMarketMovement(RouteToMarketModel model) async {
    final repository = PlannedMovementsRepository(apiHelper: apiHelper);

    final response = await repository.addRouteToMarketMovement(
      model,
    );
    if (response != null) {
      final isSuccessful = bool.tryParse(String.fromCharCodes(response));
      if (isSuccessful != null) return isSuccessful;
    }
    return false;
  }

  Future<void> submitTransportRequests(BuildContext context) async {
    final selectedMovements = selectedRows.toList();
    if (selectedMovements.any((element) => element.requestedDate == null)) {
      showSnackBarResponse(
        context: context,
        message: context.l10n.psnopPlannedMovementsSubmitTransportValidation,
        color: Theme.of(context).colorScheme.error,
      );
      return;
    }
    busy.value = true;
    final repository = PlannedMovementsRepository(apiHelper: apiHelper);
    final response = await repository.submitTransportRequests(
      PlannedMovementResponseModel(plannedMovements: selectedMovements),
    );
    if (response != null) {
      final isSuccessful = bool.tryParse(String.fromCharCodes(response));
      if (isSuccessful != null && isSuccessful) {
        if (context.mounted) {
          showSnackBarResponse(
            context: context,
            message: context.l10n.psnopPlannedMovementsSubmitTransportSuccess,
          );
        }
        busy.value = false;
        await searchChanged();
        return;
      }
    }
    if (context.mounted) {
      showSnackBarResponse(
        context: context,
        message: context.l10n.psnopPlannedMovementsSubmitTransportFailure,
        color: Theme.of(context).colorScheme.error,
      );
    }
    busy.value = false;
  }

  void showSnackBarResponse({
    required BuildContext context,
    required String message,
    Color? color,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }
}
