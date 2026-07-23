import 'package:emr_one_core/emr_one_core.dart';

class DeliveryPeriodProvider extends EmrUtilSuggestionBaseApiProvider<String> {
  DeliveryPeriodProvider(this.deliveryPeriods);
  final List<String> deliveryPeriods;

  @override
  Future<List<String>> getSuggestions(String query) async {
    final pattern = RegExp(query, caseSensitive: false);

    return Future.value(
      deliveryPeriods.where((element) => element.contains(pattern)).toList(),
    );
  }
}
