import 'package:emr_one_elv_core/models/account_models/account_models.dart';
import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_one_elv_core/models/quote_models/collection_detail.dart';
import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';
import 'package:emr_one_elv_core/models/quote_type_enum.dart';
import 'package:emr_sharedtypes/models/yard.dart';

class BatchQuoteModel {
  BatchQuoteModel({
    required this.accountModel,
    required this.acquisition,
    required this.id,
    required this.created,
    required this.createdBy,
    required this.expires,
    required this.hasExpired,
    required this.paymentMethod,
    required this.sentForPayment,
    required this.quoteStatus,
    required this.quoteSource,
    required this.yardAddress,
    this.yard,
    this.customCollection,
    this.quotes = const [],
    this.quoteSummaries = const [],
    this.selectedBankAccount,
    this.postCode,
    this.yardCode,
    this.batchQuoteBundleId,
    this.collectionAndBankDetail,
    this.leadSourceId,
    this.quoteAbandonReason,
    this.modifiedBy,
    this.modifiedDate,
    this.notes,
  });

  AccountModel? accountModel;
  QuoteTypeEnum acquisition;
  int id;
  DateTime created;
  String createdBy;
  DateTime expires;
  bool hasExpired;
  PaymentMethod paymentMethod;
  bool sentForPayment;
  QuoteStatusEnum quoteStatus;
  String quoteSource;
  Address? yardAddress;
  Yard? yard;
  CustomCollectionInformation? customCollection;
  List<ActiveQuote> quotes;
  List<QuoteSummaries> quoteSummaries;
  BankAccountModel? selectedBankAccount;
  String? postCode;
  String? yardCode;
  String? batchQuoteBundleId;
  CollectionAndBankDetail? collectionAndBankDetail;
  int? leadSourceId;
  String? quoteAbandonReason;
  String? modifiedBy;
  DateTime? modifiedDate;
  String? notes;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (customCollection != null) {
      json['customCollection'] = customCollection;
    }
    json['accountModel'] = accountModel;
    json['acquisition'] = acquisition;
    json['yard'] = yard;
    if (quotes.isNotEmpty) json['quotes'] = quotes;
    if (quoteSummaries.isNotEmpty) json['quoteSummaries'] = quoteSummaries;
    json['id'] = id;
    json['created'] = created.toUtc().toIso8601String();
    json['expires'] = expires.toUtc().toIso8601String();
    json['hasExpired'] = hasExpired;
    json['paymentMethod'] = paymentMethod;
    json['sentForPayment'] = sentForPayment;
    json['quoteStatus'] = quoteStatus;
    if (selectedBankAccount != null) {
      json['selectedBankAccount'] = selectedBankAccount;
    }
    json['quoteSource'] = quoteSource;
    if (yardCode != null) json['yardCode'] = yardCode;
    if (leadSourceId != null) json['leadSourceId'] = leadSourceId;
    if (notes != null) json['notes'] = notes;
    return json;
  }

  static BatchQuoteModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BatchQuoteModel(
        customCollection:
            CustomCollectionInformation.fromJson(json['customCollection']),
        accountModel: AccountModel.fromJson(json['accountModel']),
        acquisition: QuoteTypeEnum.fromJson(json['acquisition'])!,
        yard: yardFromApi(ApiYard.fromJson(json['yard'])) ??
            Yard(yardCode: '', name: '', shortName: ''),
        yardCode: json['yardCode'] as String?,
        quotes: ActiveQuote.listFromJson(json['quotes']) ?? [],
        quoteSummaries:
            QuoteSummaries.listFromJson(json['quoteSummaries']) ?? [],
        id: json['id'] as int,
        created: DateTime.parse(json['created'] as String),
        createdBy: json['createdBy'] as String,
        expires: DateTime.parse(json['expires'] as String),
        hasExpired: json['hasExpired'] as bool,
        yardAddress: Address.fromJson(
          (json['yard'] as Map<String, dynamic>?)?['address'],
        ),
        paymentMethod: PaymentMethod.fromJson(json['paymentMethod'])!,
        sentForPayment: json['sentForPayment'] as bool,
        quoteStatus: QuoteStatusEnum.fromJson(json['quoteStatus'])!,
        selectedBankAccount:
            BankAccountModel.fromJson(json['selectedBankAccount']),
        quoteSource: json['quoteSource'] as String? ?? '',
        postCode: json['postCode'] as String? ?? '',
        batchQuoteBundleId: json['batchQuoteBundleId'] as String?,
        collectionAndBankDetail:
            CollectionAndBankDetail.fromJson(json['collectionAndBankDetail']),
        leadSourceId: json['leadSourceId'] as int?,
        quoteAbandonReason: json['quoteAbandonReason'] as String?,
        modifiedBy: json['modifiedBy'] as String?,
        modifiedDate: json['modifiedDate'] != null
            ? DateTime.tryParse(json['modifiedDate'] as String)
            : null,
        notes: json['notes'] as String?,
      );
    }
    return null;
  }

  static List<BatchQuoteModel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BatchQuoteModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchQuoteModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
