import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/models/term_details/term_details.dart';
import 'package:flutter/material.dart';

class PartialPayTermDetailsFormData {
  PartialPayTermDetailsFormData({
    required AdvanceTermType termType,
    List<String>? ticketIds,
  }) {
    this.ticketIds = ValueNotifier(ticketIds ?? const []);
    this.termType = ValueNotifier(termType);
  }

  factory PartialPayTermDetailsFormData.fromPatialPayTermDetails(
    PartialPayTermDetails model,
  ) =>
      PartialPayTermDetailsFormData(
        termType: model.termType,
        ticketIds: model.ticketIds,
      );

  PartialPayTermDetails toPartialPayTermDetails() {
    return PartialPayTermDetails(
      termType: termType.value,
      ticketIds: ticketIds.value,
    );
  }

  late final ValueNotifier<AdvanceTermType> termType;
  late final ValueNotifier<List<String>> ticketIds;
}
