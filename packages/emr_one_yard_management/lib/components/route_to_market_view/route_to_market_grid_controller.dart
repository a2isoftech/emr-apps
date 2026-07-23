import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/components/route_to_market_view/route_to_market_filter_controller.dart';
import 'package:emr_one_yard_management/models/routeToMarket/change_history_model.dart';
import 'package:emr_one_yard_management/models/routeToMarket/paginated_result.dart';
import 'package:emr_one_yard_management/models/routeToMarket/route_to_market_grid_model.dart';
import 'package:emr_one_yard_management/repository/routeToMarket/route_to_market_repository.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class RouteToMarketGridController {
  RouteToMarketGridController({
    required this.context,
    required this.client,
    required this.appConfig,
    required this.filterController,
  }) {
    filterController.filters.addListener(() {
      getRouteToMarketData(isRefresh: true);
    });
    getRouteToMarketData();
    selectedRouteToMarketId.addListener(getChangeHistory);
  }

  final BuildContext context;
  final BaseClient client;
  final AppConfig appConfig;
  final RouteToMarketFilterController filterController;
  ValueNotifier<bool> busy = ValueNotifier(false);
  ValueNotifier<bool> busyHistory = ValueNotifier(false);
  final ValueNotifier<List<RouteToMarketGridModel>> _data = ValueNotifier([]);
  final ValueNotifier<List<ChangeHistoryModel>> _changeHistory =
      ValueNotifier([]);
  late EmrGridController<RouteToMarketGridModel> gridController =
      EmrGridController(data: _data);
  late EmrGridController<ChangeHistoryModel> historyGridController =
      EmrGridController(data: _changeHistory);

  ValueNotifier<int?> selectedRouteToMarketId = ValueNotifier(0);

  final _debounceSearch =
      Debounceable<PaginatedResult<List<RouteToMarketGridModel>>>();
  String? nextToken;
  ValueNotifier<bool> isLoadingNextPage = ValueNotifier(false);

  void dispose() {
    filterController.filters.removeListener(getRouteToMarketData);

    _debounceSearch.dispose();
  }

  Future<PaginatedResult<List<RouteToMarketGridModel>>?> getRouteToMarketData({
    bool isRefresh = false,
  }) =>
      _debounceSearch.call(
        () async {
          if (_data.value.isEmpty || isRefresh) {
            busy.value = true;
            nextToken = null;
          } else {
            isLoadingNextPage.value = true;
          }
          final filters = filterController.getCurrentFilters();

          return RouteToMarketRepository.getRouteToMarket(
            client,
            appConfig,
            filters,
            nextToken,
          ).catchError((Object err) {
            busy.value = false;
            isLoadingNextPage.value = false;
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(err.toString()),
                  backgroundColor: Colors.red,
                ),
              );
            }
            return Future.value(
              PaginatedResult<List<RouteToMarketGridModel>>(
                '',
                <RouteToMarketGridModel>[],
              ),
            );
          });
        },
        onDebounced: () {
          busy.value = false;
          isLoadingNextPage.value = false;
        },
        then: (values) {
          nextToken = values.nextPageToken;
          if (_data.value.isEmpty || isRefresh) {
            _data.value = values.items;
          } else {
            _data.value = [..._data.value, ...values.items];
          }
          busy.value = false;
          isLoadingNextPage.value = false;
        },
      );
  Future<List<ChangeHistoryModel>> getChangeHistory() async {
    busyHistory.value = true;
    _changeHistory.value = _data.value
            .where((element) => element.id == selectedRouteToMarketId.value)
            .first
            .changeHistories ??
        [];
    busyHistory.value = false;
    return _changeHistory.value;
  }
}
