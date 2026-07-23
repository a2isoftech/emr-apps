import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:flutter/material.dart';

class ConfigurationsWidget extends StatelessWidget {
  const ConfigurationsWidget({
    required this.model,
    super.key,
  });
  final WeighbridgeFormData model;

  @override
  Widget build(BuildContext context) {
    return BorderedCardWithTitle(
      title: context.l10n.settings,
      child: Column(
        children: [
          Row(
            spacing: Insets.gutter,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.manualWeight,
                  binding: model.enableManualWeight,
                ),
              ),
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.manualTareWeight,
                  binding: model.enableManualTareWeight,
                ),
              ),
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.enableCheckWeight,
                  binding: model.enableCheckWeight,
                ),
              ),
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.pushTicketToTrade,
                  binding: model.publishTicketToTrade,
                ),
              ),
            ],
          ),
          Row(
            spacing: Insets.gutter,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.allowRollingWeights,
                  binding: model.allowRollingWeights,
                ),
              ),
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.enableContainerTicket,
                  binding: model.enableContainerTicket,
                ),
              ),
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.allowAccountCreation,
                  binding: model.allowAccountCreation,
                ),
              ),
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.transferLine,
                  binding: model.enableTransferLine,
                ),
              ),
            ],
          ),
          Row(
            spacing: Insets.gutter,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.createNewLine,
                  binding: model.enableCreateNewLine,
                ),
              ),
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.publicWeighLabel,
                  binding: model.enablePublicWeigh,
                ),
              ),
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.ticketSplitLabel,
                  binding: model.enableTicketSplit,
                ),
              ),
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.showStockAsProduct,
                  binding: model.showStockAsProduct,
                ),
              ),
              
            ],
          ),
          Row(
            spacing: Insets.gutter,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.printTicketComments,
                  binding: model.printTicketComments,
                ),
              ),
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.vehicleDetailsRequired,
                  binding: model.vehicleDetailsRequired,
                ),
              ),
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.enableWeighbridgePay,
                  binding: model.enableWeighbridgePay,
                ),
              ),
              const Expanded(
                child: SizedBox.shrink(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
