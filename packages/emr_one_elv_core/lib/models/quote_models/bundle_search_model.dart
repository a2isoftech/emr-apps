import 'package:emr_one_elv_core/models/batch_quote_search_criteria.dart';

class BundleSearchModel {
  BundleSearchModel({
    required this.searchText,
    required this.yardCodes,
    this.sortField,
    this.sortAscending,
    this.page,
    this.pageCount,
    this.createdAfter,
    this.createdBefore,
    this.collectionDateStart,
    this.collectionDateEnd,
    this.type,
    this.status,
    this.collectionStatus,
    this.leadSourceId,
  });

  final String searchText;
  BatchQuoteSearchSortFieldEnum? sortField;
  bool? sortAscending;
  int? page;
  int? pageCount;
  String? createdBefore;
  String? createdAfter;
  String? collectionDateStart;
  String? collectionDateEnd;
  String? type;
  String? status;
  final List<String> yardCodes;
  String? collectionStatus;
  int? leadSourceId;

  Map<String, dynamic> toJson() => {
        'searchText': searchText,
        if (sortField != null) 'sortField': sortField!.value,
        if (sortAscending != null) 'sortAscending': sortAscending,
        if (page != null) 'page': page,
        if (pageCount != null) 'pageCount': pageCount,
        if (createdBefore != null) 'createdBefore': createdBefore,
        if (createdAfter != null) 'createdAfter': createdAfter,
        if (collectionDateStart != null) 
          'collectionDateStart': collectionDateStart,
        if (collectionDateEnd != null) 'collectionDateEnd': collectionDateEnd,
        if (type != null) 'type': type,
        if (status != null) 'status': status,
        'yardCodes': yardCodes,
        if (collectionStatus != null) 'collectionStatus': collectionStatus,
        if (leadSourceId != null && leadSourceId! > 0) 
          'leadSourceId': leadSourceId,
      };
}
