import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_deduction.g.dart';

@JsonSerializable(explicitToJson: true)
class BaseDeduction {
  BaseDeduction({
    required this.typeId,
    required this.value,
    this.comments = const [],
  });
  factory BaseDeduction.fromJson(Map<String, dynamic> json) =>
      _$BaseDeductionFromJson(json);

  String typeId;
  double value;
  List<Comment> comments;

  Map<String, dynamic> toJson() => _$BaseDeductionToJson(this);
}
