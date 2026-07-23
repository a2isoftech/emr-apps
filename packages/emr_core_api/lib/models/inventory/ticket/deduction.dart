import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deduction.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Deduction {
  Deduction();

  factory Deduction.fromJson(Map<String, dynamic> json) =>
      _$DeductionFromJson(json);

  Map<String, dynamic> toJson() => _$DeductionToJson(this);

  late String typeId;
  DeductionSubType? subType;
  late UomValue? weight;
  late double? value;
  String? scaleIdentifier;
  String? weightSerial;
  bool isTareFromPreviousWeight = false;
  bool hasSeenZero = false;
  List<InventoryMediaAsset> mediaAssets = [];
}

enum DeductionSubType {
  @JsonValue('INTERNAL')
  internal,
  @JsonValue('EXTERNAL_ON')
  externalOn,
  @JsonValue('EXTERNAL_OFF')
  externalOff
}
