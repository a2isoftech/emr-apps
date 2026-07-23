import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_payment_record_input.g.dart';

@JsonSerializable(explicitToJson: true)
class CreatePaymentRecordInput {
  CreatePaymentRecordInput({
    required this.extendedProperties,
    required this.paymentMethodDetails,
    required this.paymentMethod,
    required this.yardCode,
    required this.referenceIds,
    required this.paymentType,
    required this.paymentRecordItems,
    required this.authorizationType,
    required this.splitPaymentBreakups,
    required this.advanceOverrides,
  });

  factory CreatePaymentRecordInput.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentRecordInputFromJson(json);

  final Map<String, dynamic> extendedProperties;
  final Map<String, dynamic> paymentMethodDetails;
  final PaymentMethod paymentMethod;
  final String yardCode;
  final List<String> referenceIds;
  final PaymentType paymentType;
  final List<PaymentRecordItem> paymentRecordItems;
  final AuthorizationMode? authorizationType;
  final List<SplitPaymentBreakup>? splitPaymentBreakups;
  final List<AdvanceOffsetInfo>? advanceOverrides;

  Map<String, dynamic> toJson() => _$CreatePaymentRecordInputToJson(this);
}
