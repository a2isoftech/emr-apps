import 'package:async/async.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/queries/queries.dart';
import 'package:emr_one_crm/models/yard_price_lists/yard_mappers.dart';
import 'package:emr_one_crm/models/yard_price_lists/yard_price_line.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

enum YardPricesSortMode { assending, descending }

enum YardPricesFilterMode { all, ferrous, nonfer, popular, fast }

enum YardPricesViewMode { list, grid }

class YardPricesDataController extends ChangeNotifier {
  YardPricesDataController(this.httpClient, this.userInfoService) {
    _setDefaultYard();
  }

  final _pageSize = 50;

  final BaseClient httpClient;
  final UserInfoService userInfoService;

  String? currentYard;

  YardPricesSortMode sortMode = YardPricesSortMode.assending;
  YardPricesFilterMode filterMode = YardPricesFilterMode.all;
  YardPricesViewMode viewMode = YardPricesViewMode.list;
  String? search;

  List<YardPriceLine> loadedGradePrices = [];
  List<YardPriceLine> visibleGradePrices = [];

  CancelableOperation<List<YardPriceLine>>? _operation;

  bool started = false;
  bool loading = false;
  bool error = false;
  bool gettingData = false;

  bool get morePages {
    return started == false ||
        (_afterCursor != null && _afterCursor!.isNotEmpty);
  }

  String? _afterCursor;

  void _setDefaultYard() {
    userInfoService.getUserInfo().then((value) {
      currentYard = value?.defaultYard;
      notifyListeners();
    });
  }

  void setYard(String newYardCode) {
    currentYard = newYardCode;

    loadedGradePrices = [];
    visibleGradePrices = [];
    _afterCursor = null;
    started = false;
    loading = false;
    error = false;
    gettingData = false;
    _operation?.cancel();

    notifyListeners();
  }

  void setSort(YardPricesSortMode newSortMode) {
    if (sortMode != newSortMode) {
      if (newSortMode == YardPricesSortMode.descending) {
        // To sort in reverse all the data needs to be loaded
        if (morePages) {
          fetchRemainingData();
        }
      }
      sortMode = newSortMode;
      setVisibleGrades();
      notifyListeners();
    }
  }

  void setFilter(YardPricesFilterMode mode) {
    if (filterMode != mode) {
      filterMode = mode;
      setVisibleGrades();
      notifyListeners();
    }
  }

  void setSearch(String value) {
    if (search != value) {
      search = value;
      setVisibleGrades();
      notifyListeners();
    }
  }

  void setViewMode(YardPricesViewMode newViewMode) {
    if (newViewMode != viewMode) {
      viewMode = newViewMode;
      notifyListeners();
    }
  }

  List<YardPriceLine> applyFilter(List<YardPriceLine> source) {
    if (filterMode == YardPricesFilterMode.all) {
      return source;
    }

    return source
        .where(
          (g) =>
              (filterMode == YardPricesFilterMode.ferrous &&
                  g.gradeType == 'FERROUS') ||
              (filterMode == YardPricesFilterMode.nonfer &&
                  g.gradeType == 'NONFER'),
        )
        .toList();
  }

  List<YardPriceLine> applySearch(List<YardPriceLine> source) {
    if (search == null || search!.isEmpty) {
      return source;
    }

    final upperSearch = search!.toUpperCase();

    return source
        .where(
          (g) =>
              g.gradeCode.toUpperCase().contains(upperSearch) ||
              g.gradeComment.toUpperCase().contains(upperSearch),
        )
        .toList();
  }

  List<YardPriceLine> applySort(List<YardPriceLine> source) {
    if (sortMode == YardPricesSortMode.assending) {
      return source;
    }

    return source.reversed.toList();
  }

  void setVisibleGrades() {
    visibleGradePrices = applySort(applySearch(applyFilter(loadedGradePrices)));
  }

  void fetchData() {
    try {
      if (!morePages) return;

      started = true;
      loading = true;
      error = false;

      final future = getData();

      _operation = CancelableOperation.fromFuture(future);

      _operation!.then((value) {
        loading = false;
        loadedGradePrices.addAll(value);

        setVisibleGrades();
        notifyListeners();
      });
    } catch (e) {
      loading = false;
      error = true;
      notifyListeners();
    }
  }

  void fetchRemainingData() {
    try {
      if (!morePages) return;

      started = true;
      loading = true;
      error = false;
      notifyListeners();

      final future = getAllData();

      _operation = CancelableOperation.fromFuture(future);

      _operation!.then((value) {
        loading = false;
        loadedGradePrices.addAll(value);

        setVisibleGrades();
        notifyListeners();
      });
    } catch (e) {
      loading = false;
      error = true;
      notifyListeners();
    }
  }

  Future<List<YardPriceLine>> getAllData() async {
    final remainingData = <YardPriceLine>[];

    while (_afterCursor?.isNotEmpty ?? false) {
      final pageData = await getData();
      remainingData.addAll(pageData);
    }

    return Future<List<YardPriceLine>>.value(remainingData);
  }

  Future<List<YardPriceLine>> getData() async {
    if (gettingData) {
      return [];
    }

    try {
      gettingData = true;

      final result = await documentNodeQueryGetYardPrices.execute(
        httpClient,
        Query$GetYardPrices.fromJson,
        variables: Variables$Query$GetYardPrices(
          searchDate: DateTime.now().dateOnly,
          partyAccountNos: ['N${currentYard!}'],
          pageSize: _pageSize,
          after: _afterCursor,
        ),
      );

      if (result.hasErrors() || result.data?.guidePrices?.nodes == null) {
        //Need to do some error handling here?
        _afterCursor = null;
        return [];
      }

      final pageData = result.data?.guidePrices?.nodes!
              .map(YardMappers.yardMapper)
              .toList() ??
          [];

      _afterCursor = result.data?.guidePrices?.pageInfo.endCursor;
      return Future<List<YardPriceLine>>.value(pageData);
    } finally {
      gettingData = false;
    }
  }

  Future<List<Yard>> getYards(String query) async {
    final user = await userInfoService.getUserInfo();
    final queryLower = query.toLowerCase();
    return user?.yards
            .where(
              (item) =>
                  item.yardCode.toLowerCase().contains(queryLower) ||
                  item.name.toLowerCase().contains(queryLower),
            )
            .toList() ??
        [];
  }
}
