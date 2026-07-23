import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/models/term_details/advance_term.dart';
import 'package:json_annotation/json_annotation.dart';

part 'percentage_term_details.g.dart';

@JsonSerializable()
class PercentageTermDetails extends AdvanceTerm {

  PercentageTermDetails({
    required super.termType,
    required this.amount,
    required this.percentage,
  });

  factory PercentageTermDetails.fromJson(Map<String, dynamic> json) =>
      _$PercentageTermDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PercentageTermDetailsToJson(this);

   final double amount;
  final double percentage;
}
