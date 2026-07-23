import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/models/quote_account_model.dart';
import 'package:emr_one_elv_inspection/models/quote_lines_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inspection_quote_model.g.dart';

@JsonSerializable()
class InspectionQuoteModel extends ActiveQuoteModel {
  InspectionQuoteModel({
    required this.batchQuoteId,
    required this.account,
    required this.quoteSource,
    required super.quoteStatus,
    required super.total,
    required super.quoteId,
    required super.vehicleDescription,
    required super.catValue,
    required super.quoteLines,
    required super.vehicleConfiguration,
    required super.leadSource,
  });

  factory InspectionQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$InspectionQuoteModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$InspectionQuoteModelToJson(this);

  final int batchQuoteId;
  final QuoteAccountModel account;
  
  @JsonKey(
    name: 'quoteSource',
    fromJson: quoteSourceFromJson,
    toJson: quoteSourceToJson,
  )
  final QuoteSourceEnum quoteSource;
}
