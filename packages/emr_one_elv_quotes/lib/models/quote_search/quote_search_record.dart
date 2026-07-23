class QuoteSearchRecord {
  QuoteSearchRecord({
    required this.id,
    required this.batchQuoteBundleId,
    required this.accountCode,
    required this.accountName,
    required this.quoteValue,
    required this.yardCode,
    required this.yardName,
    required this.vehiclesQuoted,
    required this.vinList,
    required this.vrnList,
    required this.quoteStatus,
    required this.quoteSource,
    required this.priceType,
    required this.createdDate,
    this.postCode,
    this.leadSource,
    this.collectionOperatorAccountCode,
    this.collectionOperatorAccountName,
    this.collectionDate,
    this.collectionStatus,
  });

  String id;
  String batchQuoteBundleId;
  String accountCode;
  String accountName;
  double quoteValue;
  String? postCode;
  String yardCode;
  String yardName;
  int vehiclesQuoted;
  List<String> vinList;
  List<String> vrnList;
  String quoteStatus;
  String quoteSource;
  String? leadSource;
  String priceType;
  String? collectionOperatorAccountCode;
  String? collectionOperatorAccountName;
  DateTime? collectionDate;
  String? collectionStatus;
  DateTime createdDate;
}
