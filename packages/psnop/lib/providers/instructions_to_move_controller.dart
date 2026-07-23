import 'package:flutter/material.dart';
import 'package:psnop/enums/instructions_to_move_state.dart';
import 'package:psnop/models/depot_search/depot_search_model.dart';
import 'package:psnop/models/filter_response_models/depot_response_model.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_summary_request_model.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_summary_response_model.dart';
import 'package:psnop/repository/instructions_to_move_repository.dart';

class InstructionsToMoveController extends ChangeNotifier {
  InstructionsToMoveSummaryResponseModel model =
      InstructionsToMoveSummaryResponseModel.empty();
  InstructionsToMoveState state = InstructionsToMoveState.initial;
  List<DepotResponseModel> depotNumbers = [];
  List<String> grades = [];
  DateTimeRange dateTimeRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now().add(
      const Duration(
        days: 14,
      ),
    ),
  );
  DepotSearchModel? searchModel;
  double scrollOffset = 0;

  void clear() {
    depotNumbers = [];
    grades = [];
    dateTimeRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(
        const Duration(
          days: 14,
        ),
      ),
    );
    model = InstructionsToMoveSummaryResponseModel.empty();
    scrollOffset = 0;
    searchModel = null;
    state = InstructionsToMoveState.initial;
    notifyListeners();
  }

  Future<void> getInstructionsToMove({
    required InstructionsToMoveSummaryRequestModel filter,
    required InstructionsToMoveRepository repository,
  }) async {
    scrollOffset = 0;
    state = InstructionsToMoveState.loading;
    notifyListeners();

    final response = await repository.getSummary(
      filter,
    );

    if (response != null) {
      model = response;
      state = InstructionsToMoveState.success;
      notifyListeners();
    } else {
      model = InstructionsToMoveSummaryResponseModel.empty();
      state = InstructionsToMoveState.error;
      notifyListeners();
    }
  }

  void updateDateRange(DateTimeRange pickedDateRange) {
    dateTimeRange = pickedDateRange;
    notifyListeners();
  }
}
