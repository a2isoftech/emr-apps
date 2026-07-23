import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class SyncTicketTasksDataSource
    extends EmrQueryGraphQLDataSource<SyncWeighbridgeTicketTask> {
  SyncTicketTasksDataSource({
    required this.coreApiService,
    required this.handleErrors,
  });

  final CoreApiService coreApiService;
  final void Function(String) handleErrors;
  @override
  bool get autoPopulate => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();
    String? searchQuery;

    if (queryScope.query.isNotEmpty) {
      final tokens = queryScope.query.split(' ');
      searchQuery = '*${tokens.join('* ')}*';
    }

    final status = getStatus();
    final yardCodes = getYardCodes();
    final ticketIds = getTicketIds();
    final response = await coreApiService.ticketService.getSyncTicketTasks(
      isCompleted: SyncTicketTasksSearchFilterController.isCompleted(status),
      query: searchQuery,
      yardCodes: yardCodes,
      ticketIds: ticketIds,
      before: before,
      after: after,
      first: first,
      last: last,
      sortOrder: queryScope.sortOrder,
    );

    if (response.success == false || response.data == null) {
      loading.value = false;

      if (response.message.isNotEmpty) {
        handleErrors(response.message);
      }

      return;
    }

    final syncTicketTasks = response.data!.$1;
    final meta = response.data!.$2;

    // Update the data source with the new data.
    // NOTE: data.value MUST ALWAYS BE SET LAST WHEN USING PAGING.
    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    data.value = syncTicketTasks;

    loading.value = false;
  }

  String? getStatus() {
    return _getStringFilter(SyncTicketTasksSearchFilterController.kStatus);
  }

  List<String>? getYardCodes() {
    return _getStringFilterList(
      SyncTicketTasksSearchFilterController.kYardCode,
    );
  }

  List<String>? getTicketIds() {
    return _getStringFilterList(
      SyncTicketTasksSearchFilterController.kTicketNumber,
    );
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  String? _getStringFilter(String key) => queryScope.filters[key] as String?;
}
