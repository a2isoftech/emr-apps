import 'package:emr_one_elv_quotes/models/common_classes/cat/techemet_cat_data.dart';

class TechemetCatLookupResponse {
  /// Returns a new [TechemetCatLookupResponse] instance.
  TechemetCatLookupResponse({
    required this.techemetFoundNoResults,
    required this.success,
    required this.data,
    this.messages = const [],
  });

  bool techemetFoundNoResults;
  bool success;
  List<String> messages;
  TechemetCatLookUpData data;

  static TechemetCatLookupResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return TechemetCatLookupResponse(
        techemetFoundNoResults: json['techemetFoundNoResults'] as bool,
        success: json['success'] as bool,
        messages: json['messages'] is List
            ? (json['messages'] as List).cast<String>()
            : const [],
        data: TechemetCatLookUpData.fromJson(json['data'])!,
      );
    }
    return null;
  }
}
