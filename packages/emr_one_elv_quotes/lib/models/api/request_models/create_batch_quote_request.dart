import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';

class CreateBatchQuoteRequest {
  /// Returns a new [CreateBatchQuoteRequest] instance.
  CreateBatchQuoteRequest({
    required this.quoteSource,
    this.quoteId,
    this.accountNumber,
    this.email,
    this.customCollection,
    this.additionalQuotes,
  });

  int? quoteId;
  String quoteSource;
  String? accountNumber;
  String? email;
  List<QuoteToAttatchModel>? additionalQuotes;

  CustomCollectionInformation? customCollection;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};

    json['quoteId'] = quoteId;
    json['quoteSource'] = quoteSource;
    json['accountNumber'] = accountNumber;
    json['email'] = email;
    json['customCollection'] = customCollection;
    json['quotesToAttachToBatchquote'] =
        additionalQuotes?.map((quote) => quote.toJson()).toList() ?? [];

    return json;
  }

  static CreateBatchQuoteRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CreateBatchQuoteRequest(
        quoteId: json['quoteId'] as int?,
        quoteSource: json['quoteSourceId'] as String,
        accountNumber: json['accountNumber'] as String?,
        email: json['email'] as String?,
        customCollection:
            CustomCollectionInformation.fromJson(json['customCollection']),
      );
    }
    return null;
  }

  static List<CreateBatchQuoteRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CreateBatchQuoteRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateBatchQuoteRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class QuoteToAttatchModel {
  QuoteToAttatchModel({
    required this.vehicleId,
    required this.configuration,
  });

  int vehicleId;
  VehicleConfiguration configuration;

  Map<String, dynamic> toJson() {
    return {
      'vehicleId': vehicleId,
      'configuration': configuration.toJson(),
    };
  }
}
