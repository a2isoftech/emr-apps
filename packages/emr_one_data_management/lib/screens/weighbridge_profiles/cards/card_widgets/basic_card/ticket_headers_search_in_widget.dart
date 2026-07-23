import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:flutter/material.dart';

class TicketHeadersSearchInWidget extends StatelessWidget {
  const TicketHeadersSearchInWidget({
    required this.model,
    super.key,
  });
  final WeighbridgeFormData model;

  @override
  Widget build(BuildContext context) {
    return BorderedCardWithTitle(
      title: context.l10n.ticketHeadersSearchIn,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: EmrSwitchFormField(
              labelText: context.l10n.accounts,
              binding: model.ticketHeaderSearchScope.value.accounts,
            ),
          ),
          Expanded(
            child: EmrSwitchFormField(
              labelText: context.l10n.tickets,
              binding: model.ticketHeaderSearchScope.value.tickets,
            ),
          ),
          Expanded(
            child: EmrSwitchFormField(
              labelText: context.l10n.jobs,
              binding: model.ticketHeaderSearchScope.value.transportJobs,
            ),
          ),
          Expanded(
            child: EmrSwitchFormField(
              labelText: context.l10n.contracts,
              binding: model.ticketHeaderSearchScope.value.contracts,
            ),
          ),
          Expanded(
            child: EmrSwitchFormField(
              labelText: context.l10n.elvQuotes,
              binding: model.ticketHeaderSearchScope.value.elvQuotes,
            ),
          ),
        ],
      ),
    );
  }
}
