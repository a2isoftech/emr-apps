import 'package:emr_one_core/widgets/filter/emr_filter.dart';

extension EmrFilterModelListExtensions on List<EmrFilterModel<dynamic>> {
  /// Converts a [List<EmrFilterModel<dynamic>>] to querystring parameters that
  /// are compatible with the [EmrFilterController.parseFromRouterState] method.
  /// e.g.:
  /// filters=publicationId,partyAccountNo&publicationId.text=UK%20West%20(North
  /// %20West%20NFE)%20-%20B&publicationId.value=296&partyAccountNo.text=&
  /// partyAccountNo.value=LITT006
  String toQueryStringParameters({String key = 'filters'}) {
    final keysCsv = map((e) => e.key).join(',');
    final params = map(
      (e) => '${e.key}.text=${Uri.encodeComponent(e.text ?? '')}&'
          '${e.key}.value=${Uri.encodeComponent(e.value.toString())}',
    ).join('&');

    return '$key=$keysCsv&$params';
  }
}
