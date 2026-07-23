import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class YardProvider extends EmrUtilSuggestionBaseApiProvider<Yard> {
  YardProvider(this.controller);
  final PartiesPriceListWizardController controller;

  @override
  Future<List<Yard>> getSuggestions(
    String query,
  ) async {
    final yards = [
      ...controller.model!.selectedPublication!.yards,
    ];
    final pattern = RegExp(query, caseSensitive: false);

    return yards
        .where(
          (y) =>
              y.name.contains(pattern) ||
              y.yardCode.contains(pattern) ||
              y.shortName.contains(pattern),
        )
        .toList();
  }
}
