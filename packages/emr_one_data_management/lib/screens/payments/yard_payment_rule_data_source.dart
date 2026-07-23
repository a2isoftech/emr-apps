import 'package:emr_one_core/emr_one_core.dart';

class StaticEmrQueryDataSource<T> extends EmrQueryGraphQLDataSource<T> {
  StaticEmrQueryDataSource(this.items);

  final List<T> items;

  @override
  bool get autoPopulate => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final response = items;

    final yardPaymentRules = response;

    data.value = yardPaymentRules;

    loading.value = false;
  }
}
