import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_arisingpointselectmobile.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_collecteddelta.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_collectedoptmobile.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_deliverymethodselectmobile.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_depotselectmobile.dart';
import 'package:emr_one_crm/screens/contract_wizard/cw_freight_rates.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWDeliveryMethodColumn extends StatefulWidget {
  const CWDeliveryMethodColumn({
    required this.formKey,
    required this.controller,
    required this.canEnterHaulageCharge,
    required this.canSelectLocation,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final ContractController controller;
  final bool canEnterHaulageCharge;
  final bool canSelectLocation;

  @override
  State<CWDeliveryMethodColumn> createState() => _CWDeliveryMethodColumnState();
}

class _CWDeliveryMethodColumnState extends State<CWDeliveryMethodColumn>
    with AutomaticKeepAliveClientMixin<CWDeliveryMethodColumn> {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Column(
      children: [
        CWDeliveryMethodSelectMobile(
          controller: widget.controller,
          formKey: widget.formKey,
        ),
        CWDepotSelectMobile(
          controller: widget.controller,
        ),
        if (widget.canSelectLocation)
          CWArisingPointSelectMobile(
            controller: widget.controller,
            onSelected: (value) {
              widget.controller.setArisingPoint(value);
            },
            getSelectedText: () =>
                widget.controller.model!.selectedDeliveryPoint?.aliasCode ?? '',
            title: widget.controller.appConfig.isWeb
                ? '${context.l10n.location}:'
                : '${context.l10n.selectALocation}:',
          ),
        if (widget.controller
            .hasDeliveryMethod(CrmDeliveryMethod.collected)) ...[
          const SizedBox(
            width: Insets.gutter,
          ),
          CwFreightRates(
            controller: widget.controller,
          ),
          const SizedBox(
            width: Insets.gutter,
          ),
          CwCollectedDelta(
            controller: widget.controller,
          ),
          const SizedBox(
            width: Insets.gutter,
          ),
        ],
        CWCollectedOptionsMobile(
          controller: widget.controller,
          enabled: widget.canEnterHaulageCharge,
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
