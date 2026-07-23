import 'package:emr_one_cashiersearch/common/enums.dart' hide TicketStatus;
import 'package:emr_one_cashiersearch/models/advance.dart';
import 'package:emr_one_cashiersearch/models/advance_payment_info.dart';
import 'package:emr_one_cashiersearch/models/term_details/fixed_term_details.dart';
import 'package:emr_one_cashiersearch/models/term_details/partial_pay_term_details.dart';
import 'package:emr_one_cashiersearch/models/term_details/percentage_term_details.dart';
import 'package:emr_one_cashiersearch/models/ticket_line.dart';
import 'package:emr_one_cashiersearch/screens/advances_search/form_data/form_data.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart' hide Created;
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/foundation.dart';

class AdvanceFormData {
  AdvanceFormData({
    required String id,
    AccountFormData? account,
    CompanyFormData? company,
    YardFormData? handlingYard,
    YardFormData? payableYard,
    PaymentAmountFormData? paymentAmount,
    AdvanceReason? reason,
    AdvanceTermType? termType,
    FixedTermDetailsFormData? fixedTermDetails,
    PercentageTermDetailsFormData? percentageTermDetails,
    PartialPayTermDetailsFormData? partialPayTermDetails,
    bool? allowFlexiblePay,
    PaymentMethod? paymentMethod,
    DateTime? paidInFullDueDate,
    UserInfo? arrangedByUser,
    String? reference,
    List<CommentFormData>? comments,
    AdvanceStatus? status,
    this.currencyCode,
  }) {
    this.id = ValueNotifier(id);
    this.account = ValueNotifier(account);
    this.company = ValueNotifier(company);
    this.handlingYard = ValueNotifier(handlingYard);
    this.payableYard = ValueNotifier(payableYard);
    this.paymentAmount =
        ValueNotifier(paymentAmount ?? PaymentAmountFormData());
    this.reason = ValueNotifier(reason ?? AdvanceReason.commodity);
    this.termType = ValueNotifier(termType ?? AdvanceTermType.percentage);
    this.fixedTermDetails = ValueNotifier(
      fixedTermDetails ??
          FixedTermDetailsFormData(
            termType: AdvanceTermType.fixed,
            amount: this.paymentAmount.value.amount.value,
          ),
    );
    this.percentageTermDetails = ValueNotifier(
      percentageTermDetails ??
          PercentageTermDetailsFormData(
            termType: AdvanceTermType.percentage,
            amount: this.paymentAmount.value.amount.value,
          ),
    );
    this.partialPayTermDetails = ValueNotifier(
      partialPayTermDetails ??
          PartialPayTermDetailsFormData(termType: AdvanceTermType.partialPay),
    );
    this.allowFlexiblePay = ValueNotifier(allowFlexiblePay ?? false);
    this.paymentMethod = ValueNotifier(paymentMethod ?? PaymentMethod.none);
    this.paidInFullDueDate = ValueNotifier(paidInFullDueDate);
    this.arrangedByUser = ValueNotifier(arrangedByUser);
    this.reference = ValueNotifier(reference);
    this.comments = ValueNotifier(comments ?? []);
    this.status = ValueNotifier(status ?? AdvanceStatus.draft);
  }

  factory AdvanceFormData.fromNew(
    String defaultYard,
    Company? company,
    Yard? payableYard,
  ) {
    final companyFormData =
        company != null ? CompanyFormData.fromCompany(company) : null;
    final payableYardFormData = payableYard != null
        ? YardFormData.fromYard(payableYard)
        : YardFormData(id: 'yards/$defaultYard', yardCode: defaultYard);
    return AdvanceFormData(
      id: '',
      handlingYard:
          YardFormData(id: 'yards/$defaultYard', yardCode: defaultYard),
      payableYard: payableYardFormData,
      company: companyFormData,
      paymentMethod: payableYardFormData.defaultPaymentMethod.value,
    );
  }

  factory AdvanceFormData.fromAdvance(
    Advance adv,
  ) {
    return AdvanceFormData(
      id: adv.id,
      account: adv.account != null
          ? AccountFormData.fromAccount(adv.account!)
          : null,
      company: adv.company != null
          ? CompanyFormData.fromCompany(adv.company!)
          : null,
      handlingYard: adv.handlingYard != null
          ? YardFormData.fromYard(adv.handlingYard!)
          : null,
      payableYard: adv.payableYard != null
          ? YardFormData.fromYard(adv.payableYard!)
          : null,
      paymentAmount: PaymentAmountFormData.fromPaymentAmount(adv.paymentAmount),
      reason: adv.reason,
      termType: adv.term.termType,
      fixedTermDetails: adv.term.termType == AdvanceTermType.fixed &&
              adv.term is FixedTermDetails
          ? FixedTermDetailsFormData.fromFixedTermDetails(
              adv.term as FixedTermDetails,
            )
          : null,
      partialPayTermDetails: adv.term.termType == AdvanceTermType.partialPay &&
              adv.term is PartialPayTermDetails
          ? PartialPayTermDetailsFormData.fromPatialPayTermDetails(
              adv.term as PartialPayTermDetails,
            )
          : null,
      percentageTermDetails: adv.term.termType == AdvanceTermType.percentage &&
              adv.term is PercentageTermDetails
          ? PercentageTermDetailsFormData.fromPercentageTermDetails(
              adv.term as PercentageTermDetails,
            )
          : null,
      allowFlexiblePay: adv.allowFlexiblePay,
      paymentMethod: adv.paymentMethod,
      paidInFullDueDate: adv.paidInFullDueDate,
      arrangedByUser: adv.arrangedByUser,
      reference: adv.reference,
      comments: adv.comments.map(CommentFormData.fromComment).toList(),
      status: adv.status,
      currencyCode: adv.paymentAmount.currencyCode,
    );
  }

  Advance toAdvance(Created created) {
    return Advance(
      id: id.value,
      accountId: account.value?.id.value ?? '',
      companyId: company.value?.id.value ?? '',
      handlingYardId: handlingYard.value?.id.value ?? '',
      payableYardId: payableYard.value?.id.value ?? '',
      paymentAmount: paymentAmount.value.toPaymentAmount(),
      reason: reason.value,
      term: termType.value == AdvanceTermType.fixed
          ? fixedTermDetails.value.toFixedTermDetails()
          : termType.value == AdvanceTermType.percentage
              ? percentageTermDetails.value.toPercentageTermDetails()
              : partialPayTermDetails.value.toPartialPayTermDetails(),
      paymentMethod: paymentMethod.value,
      arrangedByUserId: arrangedByUser.value?.id ?? '',
      paymentInfo: AdvancePaymentInfo(
        transactionDetails: [],
        outstandingBalance: paymentAmount.value.amount.value ?? 0.0,
      ),
      allowFlexiblePay: allowFlexiblePay.value,
      paidInFullDueDate: paidInFullDueDate.value,
      reference: reference.value,
      comments: newComments.value
          .map((comment) => Comment(content: comment, created: created))
          .toList(),
      status: status.value,
    );
  }

  late final ValueNotifier<String> id;
  late final ValueNotifier<AccountFormData?> account;
  late final ValueNotifier<CompanyFormData?> company;
  late final ValueNotifier<YardFormData?> handlingYard;
  late final ValueNotifier<YardFormData?> payableYard;
  late final ValueNotifier<PaymentAmountFormData> paymentAmount;
  late final ValueNotifier<AdvanceReason> reason;
  late final ValueNotifier<AdvanceTermType> termType;
  late final ValueNotifier<FixedTermDetailsFormData> fixedTermDetails;
  late final ValueNotifier<PercentageTermDetailsFormData> percentageTermDetails;
  late final ValueNotifier<PartialPayTermDetailsFormData> partialPayTermDetails;
  late final ValueNotifier<bool> allowFlexiblePay;
  late final ValueNotifier<PaymentMethod> paymentMethod;
  late final ValueNotifier<DateTime?> paidInFullDueDate;
  late final ValueNotifier<UserInfo?> arrangedByUser;
  late final ValueNotifier<String?> reference;
  late final ValueNotifier<List<CommentFormData>> comments;
  late final ValueNotifier<AdvanceStatus> status;
  late final String? currencyCode;
  final ValueNotifier<List<String>> newComments = ValueNotifier([]);
}
