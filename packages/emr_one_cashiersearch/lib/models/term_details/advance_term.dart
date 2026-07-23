import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'advance_term.g.dart';

@JsonSerializable(explicitToJson: true)
class AdvanceTerm {
  const AdvanceTerm({required this.termType});
  factory AdvanceTerm.fromJson(Map<String, dynamic> json) =>
      _$AdvanceTermFromJson(json);

  Map<String, dynamic> toJson() => _$AdvanceTermToJson(this);

  final AdvanceTermType termType;
}
