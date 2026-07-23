import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:psnop/enums/ticket_summary_state.dart';
import 'package:psnop/models/filter_response_models/active_parties_model.dart';
import 'package:psnop/models/filter_response_models/depot_response_model.dart';
import 'package:psnop/models/ticket_summary/ticket_summary_response_model.dart';
import 'package:psnop/models/ticket_summary/ticket_summary_search.dart';
import 'package:psnop/repository/ticket_summary_repository.dart';

class TicketSummaryController extends ChangeNotifier {
  List<DepotResponseModel> depotNumbers = [];
  List<String> grades = [];
  List<ActivePartiesModel> parties = [];
  DateTimeRange? dateTimeRange;
  String ticketDirection = '';
  TicketSummaryResponseModel model = TicketSummaryResponseModel.empty();
  double scrollOffset = 0;
  TicketSummarySearchModel? searchModel;
  TicketSummaryState state = TicketSummaryState.init;

  void clear() {
    depotNumbers = [];
    grades = [];
    parties = [];
    dateTimeRange = null;
    model = TicketSummaryResponseModel.empty();
    scrollOffset = 0;
    searchModel = null;
    state = TicketSummaryState.init;
    ticketDirection = '';
    notifyListeners();
  }

  void notifyTicketSummaryListeners() {
    notifyListeners();
  }

  void changeDirection(String direction) {
    ticketDirection = direction;
    notifyListeners();
  }

  void updateDateRange(DateTimeRange? pickedDateRange) {
    dateTimeRange = pickedDateRange;
    notifyListeners();
  }

  Future<void> getTicketSummaries({
    required TicketSummarySearchModel searchModel,
    required TicketSummaryRepository repository,
  }) async {
    this.searchModel = TicketSummarySearchModel.fromJson(
      searchModel.toJson(),
    );
    scrollOffset = 0;
    state = TicketSummaryState.loading;
    notifyListeners();

    final response = await repository.fetchTicketSummaries(
      filter: searchModel,
    );
    if (response != null) {
      model = response;
      state = TicketSummaryState.success;
      notifyListeners();
    } else {
      model = TicketSummaryResponseModel.empty();
      state = TicketSummaryState.error;
      notifyListeners();
    }
  }

  Future<void> filterByDate(
    DateTime date,
    TicketSummaryRepository repository,
  ) async {
    final range = DateTimeRange(start: date, end: date);
    updateDateRange(range);
    await getTicketSummaries(
      searchModel: TicketSummarySearchModel(
        depotNos: depotNumbers.map((e) => e.depotNumber).toList(),
        grades: grades,
        parties: parties.map((e) => e.partyAccountNo).toList(),
        ticketDateFrom: dateTimeRange?.start,
        ticketDateTo: dateTimeRange?.end,
        ticketDirection: ticketDirection,
      ),
      repository: repository,
    );
  }

  Future<Uint8List?> exporttoExcel(
    TicketSummaryRepository repository,
  ) async {
    return repository.exportToExcel(filter: searchModel!);
  }

  Future<Uint8List?> exporttoPdf(
    TicketSummaryRepository repository,
  ) async {
    return repository.exportToPdf(filter: searchModel!);
  }
}
