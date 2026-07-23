import 'package:emr_one_elv_core/models/quote_models/custom_collection_information.dart';
import 'package:emr_one_elv_core/models/quote_type_enum.dart';

class UpdateBatchQuoteRequest {
  /// Returns a new [UpdateBatchQuoteRequest] instance.
  UpdateBatchQuoteRequest({
    required this.quoteSourceId,
    required this.accountCode,
    required this.yardCode,
    required this.quoteType,
    this.customCollectionInformation,
  });

  int quoteSourceId;
  String accountCode;
  String yardCode;
  QuoteTypeEnum quoteType;
  CustomCollectionInformation? customCollectionInformation;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['quoteSourceId'] = quoteSourceId;
    json['accountCode'] = accountCode;
    json['yardCode'] = yardCode;
    json['quoteType'] = quoteType;
    if (customCollectionInformation != null) {
      json['customCollectionInformation'] =
          customCollectionInformation!.toJson();
    }
    return json;
  }

  static UpdateBatchQuoteRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UpdateBatchQuoteRequest(
        quoteSourceId: json['quoteSourceId'] as int,
        accountCode: json['accountCode'] as String,
        yardCode: json['yardCode'] as String,
        quoteType: QuoteTypeEnum.fromJson(json['quoteType'])!,
        customCollectionInformation: CustomCollectionInformation.fromJson(
          json['customCollectionInformation'],
        ),
      );
    }
    return null;
  }

  static List<UpdateBatchQuoteRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UpdateBatchQuoteRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateBatchQuoteRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
