import 'package:emr_one_elv_core/models/enums/acquisition_type_enum.dart';
import 'package:emr_one_elv_core/models/enums/collection_status_enum.dart';
import 'package:emr_one_elv_core/models/enums/lead_source_enum.dart';
import 'package:emr_one_elv_core/models/enums/quote_status_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quote_search_input.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class QuoteSearchInput {
  QuoteSearchInput(
    this.query,
    this.yardCodes,
    this.quoteStatuses,
    this.acquisitionTypes,
    this.collectionStatuses,
    this.leadSources,
    this.collectionDateMin,
    this.collectionDateMax,
    this.createdDateMin,
    this.createdDateMax,
    this.territoryCode, {
    this.includeExpiredQuotes = true,
  });

  factory QuoteSearchInput.fromJson(Map<String, dynamic> json) =>
      _$QuoteSearchInputFromJson(json);

  final String? query;
  final List<String>? yardCodes;
  final List<QuoteStatusEnum>? quoteStatuses;
  final List<AcquisitionTypeEnum>? acquisitionTypes;
  final List<CollectionStatusEnum>? collectionStatuses;
  final List<LeadSourceEnum>? leadSources;
  final DateTime? collectionDateMin;
  final DateTime? collectionDateMax;
  final DateTime? createdDateMin;
  final DateTime? createdDateMax;
  final String? territoryCode;
  final bool includeExpiredQuotes;

  Map<String, dynamic> toJson() => _$QuoteSearchInputToJson(this);
}
