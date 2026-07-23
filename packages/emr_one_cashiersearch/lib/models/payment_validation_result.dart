import 'package:emr_one_cashiersearch/models/validation_flags.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_validation_result.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentValidationResult {
  PaymentValidationResult({
    required this.status,
    required this.validationFlags,
    this.errors = const [],
    this.warnings = const [],
  });
  factory PaymentValidationResult.fromJson(Map<String, dynamic> json) =>
      _$PaymentValidationResultFromJson(json);
  List<String> errors;
  List<String> warnings;
  Status status;
  ValidationFlags validationFlags;

  Map<String, dynamic> toJson() => _$PaymentValidationResultToJson(this);
}

enum Status {
  @JsonValue('SUCCESS')
  success,
  @JsonValue('WARNING')
  warning,
  @JsonValue('ERROR')
  error,
}
