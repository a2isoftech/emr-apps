import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/user_settings_service.dart';
import 'package:emr_one_transport/presentation/shared_widgets/user_preferences/page_control_events.dart';
import 'package:flutter/material.dart';

class DispatchYardsSearchController extends ChangeNotifier {
  DispatchYardsSearchController({required this.userSettingsService});

  late final PageControlEvents _pageControlEvents =
      PageControlEvents(onPageChanged: _onPageChanged);

  final UserSettingsService userSettingsService;
  bool isLoading = true;
  List<DispatchYards> searchedDispatchYards = [];
  List<DispatchYards> dispatchYards = [];
  List<DispatchYards> filteredDispatchYards = [];

  PageControlEvents get pageControlEvents => _pageControlEvents;

  void _onPageChanged(
    int pageNumber,
    int pageSize,
  ) {
    filteredDispatchYards =
        (searchedDispatchYards.isEmpty && filteredDispatchYards.isEmpty)
            ? []
            : (searchedDispatchYards.isEmpty
                    ? dispatchYards
                    : searchedDispatchYards)
                .skip((pageNumber - 1) * pageSize)
                .take(pageSize)
                .toList();
    notifyListeners();
  }

  Future<void> search(String searchedquery) async {
    final query = searchedquery.toLowerCase();

    searchedDispatchYards = dispatchYards
        .where(
          (e) =>
              e.yardCode!.toLowerCase().contains(query) ||
              e.yardName!.toLowerCase().contains(query),
        )
        .toList();

    filteredDispatchYards = searchedDispatchYards;
    _pageControlEvents.update(filteredDispatchYards.length);
    notifyListeners();
  }

  void toggleSelection(String code, {required bool value}) {
    dispatchYards.firstWhere((e) => e.yardCode == code).isDispatchYard = value;
    notifyListeners();
  }

  Future<void> getUserDispatchYards() async {
    final result = await userSettingsService.getUserDispatchYards();
    if (result.isNotEmpty) {
      dispatchYards = result;
      dispatchYards.sort((a, b) {
        final sortBySelected = ((b.isDispatchYard ?? false) == true ? 1 : 0)
            .compareTo((a.isDispatchYard ?? false) == true ? 1 : 0);

        if (sortBySelected == 0) {
          return a.yardCode!.compareTo(b.yardCode!);
        }
        return sortBySelected;
      });
    }

    filteredDispatchYards = dispatchYards;
    _pageControlEvents.update(dispatchYards.length);
    isLoading = false;
    notifyListeners();
  }

  Future<ApiResponse<void>> saveUserDispatchYards() async {
    isLoading = true;
    notifyListeners();

    final checkedYardCodes = Map.fromEntries(
      dispatchYards
          .where((e) => e.isDispatchYard ?? false == true)
          .map((item) => MapEntry(item.yardCode ?? '', item.yardName ?? '')),
    );

    final result =
        await userSettingsService.saveUserDispatchYards(checkedYardCodes);

    isLoading = false;
    notifyListeners();
    return result;
  }
}
