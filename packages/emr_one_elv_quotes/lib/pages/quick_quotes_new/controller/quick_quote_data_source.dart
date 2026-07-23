import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';

class QuickQuoteDataSource extends EmrQueryDataSource<VehicleQuoteModel>
    with EmrQueryDataSourcePager<VehicleQuoteModel> {
  @override
  bool get autoPopulate => true;

  @override
  bool get supportsPaging => false;

  @override
  Future<void> refresh() async {
    loading.value = true;

    recordCount = data.value.length;

    loading.value = false;
  }
}
