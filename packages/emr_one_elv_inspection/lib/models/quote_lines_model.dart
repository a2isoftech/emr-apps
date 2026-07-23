import 'package:json_annotation/json_annotation.dart';

part 'quote_lines_model.g.dart';

@JsonSerializable()
class QuoteLinesModel {
  QuoteLinesModel({
    required this.description,
    required this.price,
  });

  factory QuoteLinesModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$QuoteLinesModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteLinesModelToJson(this);

  final String description;
  final double price;
}
