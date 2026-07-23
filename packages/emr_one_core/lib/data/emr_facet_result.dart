import 'package:emr_one_core/data/emr_facet_result_value.dart';

class EmrFacetResult {
  EmrFacetResult({
    required this.name,
    required this.values,
  });

  final String name;

  final List<EmrFacetResultValue> values;
}
