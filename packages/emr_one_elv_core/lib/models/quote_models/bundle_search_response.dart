import 'package:emr_one_elv_core/models/batch_quote_search_criteria.dart';
import 'package:emr_one_elv_core/models/collection_status_enum.dart';
import 'package:emr_one_elv_core/models/quote_type_enum.dart';

class BundleSearchResponse {
  BundleSearchResponse({
    required this.batchQuotes,
    required this.totalRecords,
    required this.page,
    required this.pageSize,
    required this.totalPages,
    this.errorMessage,
  });

  factory BundleSearchResponse.fromJson(Map<String, dynamic> json) =>
      BundleSearchResponse(
        batchQuotes: (json['batchQuotes'] as List<dynamic>)
            .map(
              (e) => BatchQuoteSearchModel.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        totalRecords: json['totalRecords'] as int,
        page: json['page'] as int,
        pageSize: json['pageSize'] as int,
        totalPages: json['totalPages'] as int,
        errorMessage: json['errorMessage'] as String?,
      );

  final List<BatchQuoteSearchModel> batchQuotes;
  final int totalRecords;
  final int page;
  final int pageSize;
  final int totalPages;
  final String? errorMessage;
}

class BatchQuoteSearchModel {
  BatchQuoteSearchModel({
    required this.batchQuoteBundleId,
    required this.batchQuoteId,
    required this.yardCode,
    required this.quoteDate,
    required this.totalQuotedValue,
    required this.numberOfVehicles,
    required this.deliveredOrCollected,
    required this.accountNumber,
    required this.quoteSource,
    required this.quoteStatus,
    required this.vinList,
    required this.vrmList,
    required this.createdBy,
    required this.collectionStatus,
    required this.collectionOpearatorAccountNumber,
    this.collectionPartyName,
    this.postCode,
    this.leadSourceId,
    this.collectionDate,
  });

  factory BatchQuoteSearchModel.fromJson(Map<String, dynamic> json) =>
      BatchQuoteSearchModel(
        batchQuoteBundleId: json['batchQuoteBundleId'] as String,
        batchQuoteId: json['batchQuoteId'] as int,
        yardCode: json['yardCode'] as String,
        quoteDate: json['quoteDate'] as String,
        totalQuotedValue: json['totalQuotedValue'] as double,
        numberOfVehicles: json['numberOfVehicles'] as int,
        deliveredOrCollected: (json['deliveredOrCollected'] as int) == 2
            ? QuoteTypeEnum.delivered
            : QuoteTypeEnum.collected,
        accountNumber:
            ((json['account'] as Map<String, dynamic>)['accountNumber'] ??
                'LDECASH') as String,
        quoteSource:
            (json['quoteSource'] as Map<String, dynamic>)['name'] as String,
        quoteStatus: QuoteStatusEnum.mapFromInt(json['quoteStatus'] as int),
        vinList: json['vinList'] as String? ?? '',
        vrmList: json['vrmList'] as String? ?? '',
        createdBy: json['createdBy'] as String? ?? '',
        collectionOpearatorAccountNumber:
            json['collectionOperatorAccountNumber'] as String? ?? '',
        // For now this will work,
        // But in future when we have more collection statuses
        // This will need to be made dynamic to parse the int value
        // and return the enum
        collectionStatus: json['collectionStatus'] as int == 2
            ? CollectionStatusEnum.allocated
            : CollectionStatusEnum.pendingAllocation,
        leadSourceId: json['leadSourceId'] as int?,
        postCode: json['postCode'] as String? ?? '',
        collectionPartyName: json['collectionPartyName'] as String? ?? '',
        collectionDate: json['collectionDate'] as String?,
      );

  final String batchQuoteBundleId;
  final int batchQuoteId;
  final String yardCode;
  final String quoteDate;
  final double totalQuotedValue;
  final int numberOfVehicles;
  final QuoteTypeEnum deliveredOrCollected;
  final String accountNumber;
  final String vrmList;
  final String vinList;
  final QuoteStatusEnum quoteStatus;
  final String quoteSource;
  final String createdBy;
  final CollectionStatusEnum collectionStatus;
  final String collectionOpearatorAccountNumber;
  final int? leadSourceId;
  final String? postCode;
  final String? collectionPartyName;
  final String? collectionDate;
}
