import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ewc_control.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class EwcControl {
  const EwcControl({
    this.enabled = false,
    this.commoditySourceTypeId,
    this.commoditySourceType,
    this.enablePartyWasteStream = false,
  });

  factory EwcControl.fromJson(Map<String, dynamic> json) =>
      _$EwcControlFromJson(json);

  Map<String, dynamic> toJson() => _$EwcControlToJson(this);

  final bool enabled;

  final String? commoditySourceTypeId;

  final bool enablePartyWasteStream;

  final CommoditySourceTypes? commoditySourceType;
}
