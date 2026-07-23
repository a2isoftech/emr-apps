import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/models/scanned_asset.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/scanned_asset_service.dart';
import 'package:emr_one_inform/widgets/search_widget.dart';

class ScannedAssetController extends BaseController {
  ScannedAssetController({
    required this.service,
  });

  final ScannedAssetService service;
  ScannedAsset? asset;
  bool isBusy = false;

  bool _isSearchVisible = true;
  bool _isFilterVisible = true;

  SelectedDates searchSelectedDates = SelectedDates.dateRange(
    dateRange: DateUtility.getWeekDateRange(DateTime.now()),
  );

  String? _jobId;
  String? _assetCode;

  String? get jobId => _jobId;

  String? get assetCode => _assetCode;

  SearchState _searchState = SearchState(
    selectedDate: SelectedDates.dateRange(
      dateRange: DateUtility.getWeekDateRange(DateTime.now()),
    ),
  );

  SearchState get searchState => _searchState;

  void searchStateChanged(SearchState searchState) {
    _searchState = searchState;
    notifyListeners();
  }

  Future<void> getAssetByCode(String assetCode) async {
    isBusy = true;

    asset = await service.getAssetByCode(assetCode);

    isBusy = false;
    notifyListeners();
  }

  bool get isSearchVisible => _isSearchVisible;

  bool get isFilterVisible => _isFilterVisible;

  void toggleSearchWindow() {
    _isSearchVisible = !isSearchVisible;
    reload();
  }

  void toggleFilterWindow() {
    _isFilterVisible = !isFilterVisible;
    reload();
  }

  Future<void> setJobId(String? jobId) async {
    _jobId = jobId;
    await getAssetByCode(assetCode!);
    reload();
  }

  Future<void> setAssetCode(String? assetCode) async {
    _assetCode = assetCode;
    await getAssetByCode(assetCode!);
    reload();
  }
}
