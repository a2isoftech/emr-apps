import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/models/term_details/advance_term.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fixed_term_details.g.dart';

@JsonSerializable()
class FixedTermDetails extends AdvanceTerm {

  FixedTermDetails({required super.termType, required this.amount});

  factory FixedTermDetails.fromJson(Map<String, dynamic> json) =>
      _$FixedTermDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FixedTermDetailsToJson(this);

   final double amount;
}
