import 'package:emr_one_yard_logistics/models/lot_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lot_listing.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class LotListing {
  LotListing({
    required this.skip,
    required this.take,
    this.startDate,
    this.endDate,
    this.search,
    this.orderBy = const [],
    this.outerCasingFilter = const <String>[],
    this.innerCompositionFilter = const <String>[],
    this.yards = const <String>[],
    this.lotTypes = const <LotType>[],
  });

  factory LotListing.fromJson(Map<String, dynamic> json) =>
      _$LotListingFromJson(json);

  final String? search;
  final int skip;
  final int take;
  final List<String> orderBy;
  final List<String> outerCasingFilter;
  final List<String> innerCompositionFilter;
  final DateTime? startDate;
  final DateTime? endDate;
  final List<String> yards;
  final List<LotType> lotTypes;

  Map<String, dynamic> toJson() => _$LotListingToJson(this);
}
