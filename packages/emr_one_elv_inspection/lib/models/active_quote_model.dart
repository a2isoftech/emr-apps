import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/models/quote_lines_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'active_quote_model.g.dart';

@JsonSerializable()
class ActiveQuoteModel {
  ActiveQuoteModel({
    required this.quoteStatus,
    required this.total,
    required this.quoteId,
    required this.vehicleDescription,
    required this.quoteLines,
    required this.catValue,
    this.vehicleConfiguration,
    this.leadSource,
  });

  factory ActiveQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$ActiveQuoteModelFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveQuoteModelToJson(this);

  @JsonKey(
    name: 'quoteStatus',
    fromJson: quoteStatusFromJson,
    toJson: quoteStatusToJson,
  )
  final QuoteStatusEnum quoteStatus;

  double total;
  final int quoteId;
  final VehicleDescriptionModel vehicleDescription;
  double catValue;
  final VehicleConfigurationModel? vehicleConfiguration;
  final List<QuoteLinesModel> quoteLines;

  @JsonKey(
    name: 'leadSource',
    fromJson: leadSourceFromJson,
    toJson: leadSourceToJson,
  )
  final LeadSourceEnum? leadSource;
}
