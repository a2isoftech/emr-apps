import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/models/account.dart';
import 'package:emr_one_cashiersearch/models/advance_payment_info.dart';
import 'package:emr_one_cashiersearch/models/payment_amount.dart';
import 'package:emr_one_cashiersearch/models/payment_validation_result.dart';
import 'package:emr_one_cashiersearch/models/term_details/advance_term.dart';
import 'package:emr_one_cashiersearch/models/term_details/fixed_term_details.dart';
import 'package:emr_one_cashiersearch/models/term_details/partial_pay_term_details.dart';
import 'package:emr_one_cashiersearch/models/term_details/percentage_term_details.dart';
import 'package:emr_one_cashiersearch/models/ticket_line.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart' hide Account;
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:json_annotation/json_annotation.dart';

part 'advance.g.dart';

@JsonSerializable(explicitToJson: true)
class Advance {
  const Advance({
    required this.id,
    required this.accountId,
    required this.companyId,
    required this.handlingYardId,
    required this.payableYardId,
    required this.paymentAmount,
    required this.reason,
    required this.term,
    required this.paymentMethod,
    required this.arrangedByUserId,
    required this.paymentInfo,
    this.account,
    this.company,
    this.handlingYard,
    this.payableYard,
    this.allowFlexiblePay = false,
    this.paidInFullDueDate,
    this.arrangedByUser,
    this.reference,
    this.comments = const [],
    this.status = AdvanceStatus.draft,
    this.offsetStatus = OffsetStatus.none,
    this.paymentValidationResult,
  });

  factory Advance.fromJson(Map<String, dynamic> json) =>
      _$AdvanceFromJson(json);

  Map<String, dynamic> toJson() => _$AdvanceToJson(this);

  final String id;
  final String accountId;
  final Account? account;
  final String companyId;
  final Company? company;
  final String handlingYardId;
  final Yard? handlingYard;
  final String payableYardId;
  final Yard? payableYard;
  final PaymentAmount paymentAmount;
  final AdvanceReason reason;
  @JsonKey(fromJson: advanceTermFromJson)
  final AdvanceTerm term;
  final bool allowFlexiblePay;
  final PaymentMethod paymentMethod;
  final DateTime? paidInFullDueDate;
  final String arrangedByUserId;
  final UserInfo? arrangedByUser;
  final String? reference;
  final List<Comment> comments;
  final AdvancePaymentInfo paymentInfo;
  final AdvanceStatus status;
  final OffsetStatus offsetStatus;
  final PaymentValidationResult? paymentValidationResult;

  Advance copyAdvance(Account? acc, PaymentValidationResult? result) {
    return Advance(
      id: id,
      accountId: accountId,
      companyId: companyId,
      handlingYardId: handlingYardId,
      payableYardId: payableYardId,
      paymentAmount: paymentAmount,
      reason: reason,
      term: term,
      paymentMethod: paymentMethod,
      arrangedByUserId: arrangedByUserId,
      paymentInfo: paymentInfo,
      account: acc ?? account,
      company: company,
      handlingYard: handlingYard,
      payableYard: payableYard,
      allowFlexiblePay: allowFlexiblePay,
      paidInFullDueDate: paidInFullDueDate,
      arrangedByUser: arrangedByUser,
      reference: reference,
      comments: comments,
      status: status,
      offsetStatus: offsetStatus,
      paymentValidationResult: result ?? paymentValidationResult,
    );
  }
}

AdvanceTerm advanceTermFromJson(Map<String, dynamic> json) {
  final termType = AdvanceTerm.fromJson(json).termType;
  if (termType == AdvanceTermType.percentage) {
    return PercentageTermDetails.fromJson(json);
  } else if (termType == AdvanceTermType.partialPay) {
    return PartialPayTermDetails.fromJson(json);
  } else if (termType == AdvanceTermType.fixed) {
    return FixedTermDetails.fromJson(json);
  } else {
    throw Exception('Unknown term type: $json');
  }
}
