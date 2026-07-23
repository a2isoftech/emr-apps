import 'package:emr_one_elv_core/models/batch_quote_search_criteria.dart';
import 'package:emr_one_elv_core/models/quote_models/batch_quote_model.dart';

class BatchQuoteSearchModel {
  BatchQuoteSearchModel({
    required this.totalRecords,
    required this.page,
    required this.pageSize,
    required this.totalPages,
    required this.searchCriteriaUsed,
    this.batchQuotes = const [],
  });

  List<BatchQuoteModel> batchQuotes;
  int totalRecords;
  int page;
  int pageSize;
  int totalPages;
  BatchQuoteSearchCriteria searchCriteriaUsed;

  static BatchQuoteSearchModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BatchQuoteSearchModel(
        batchQuotes: BatchQuoteModel.listFromJson(json['batchQuotes'])!,
        totalRecords: json['totalRecords'] as int,
        page: json['page'] as int,
        pageSize: json['pageSize'] as int,
        totalPages: json['totalPages'] as int,
        searchCriteriaUsed:
            BatchQuoteSearchCriteria.fromJson(json['searchCriteriaUsed'])!,
      );
    }
    return null;
  }

  static List<BatchQuoteSearchModel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BatchQuoteSearchModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchQuoteSearchModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
