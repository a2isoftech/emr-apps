import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auto_hulk_affidavit.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class AutoHulkAffidavit {
  const AutoHulkAffidavit({
    this.allowedProductIds = const [],
    this.allowedProducts = const [],
    this.enabled = false,
  });

  factory AutoHulkAffidavit.fromJson(Map<String, dynamic> json) =>
      _$AutoHulkAffidavitFromJson(json);
  final bool enabled;
  final List<String> allowedProductIds;
  final List<Product> allowedProducts;
  Map<String, dynamic> toJson() => _$AutoHulkAffidavitToJson(this);
}
