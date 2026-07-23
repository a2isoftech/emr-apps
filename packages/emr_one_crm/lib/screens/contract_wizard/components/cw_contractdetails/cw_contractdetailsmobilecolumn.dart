import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/models/contract_type.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_arisingpointselectmobile.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_contract_ref.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_contractdetails/cw_pricing_method.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_dropdown.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_gplselect.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_lme.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_loadsselect.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_notes.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_orderbookselect.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_pricingoptionselect.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_startendselect.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CWContractDetailsMobileColumn extends StatefulWidget {
  const CWContractDetailsMobileColumn({
    required this.formKey,
    required this.controller,
    required this.hasCollected,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final ContractController controller;
  final bool hasCollected;

  @override
  State<CWContractDetailsMobileColumn> createState() =>
      _CWContractDetailsMobileColumnState();
}

class _CWContractDetailsMobileColumnState
    extends State<CWContractDetailsMobileColumn>
    with AutomaticKeepAliveClientMixin<CWContractDetailsMobileColumn> {
  @override
  Widget build(BuildContext context) {
    final settingsController =
        Provider.of<BaseSettingsController>(context) as SettingsController;
    super.build(context);

    return Column(
      children: [
        CWPricingOptionSelect(
          controller: widget.controller,
          formKey: widget.formKey,
        ),
        CWOrderBookSelect(
          formKey: widget.formKey,
          controller: widget.controller,
        ),
        const SizedBox(height: Insets.gutter / 2),
        if (widget.controller.isFixed) ...[
          CWPricingMethod(controller: widget.controller),
          const SizedBox(height: Insets.gutter / 2),
        ],
        ValueListenableBuilder<bool>(
          valueListenable: widget.controller.isGplCreate,
          builder: (context, isVisible, child) {
            return isVisible
                ? CWGplSelect(
                    key: const ValueKey('CWGplSelectKey'),
                    formKey: widget.formKey,
                    controller: widget.controller,
                    required: isVisible,
                  )
                : const SizedBox.shrink();
          },
        ),
        if (widget.controller.model!.isSpot)
          CWLoadsSelect(
            key: widget.controller.loadsKey,
            controller: widget.controller,
          ),
        const SizedBox(height: Insets.gutter / 2),
        CWStartEndSelect(controller: widget.controller),
        if ((!widget.controller.model!.isSpot) &&
            (settingsController.territory == 'A21' ||
                settingsController.territory == 'A24'))
          CWLmeInput(controller: widget.controller),
        if (widget.controller.model?.contractType == ContractType.sales()) ...[
          CWDropdownField<String>(
            controller: widget.controller,
            label: '${context.l10n.classification}:',
            hintText: context.l10n.selectClassification,
            validator: Validators.required,
            items: Enum$ContractClassification.values
                .where((e) => e != Enum$ContractClassification.$unknown)
                .map((e) => e.toJson())
                .toList(),
            initialValue: widget.controller.model?.classification == null
                ? null
                : Enum$ContractClassification
                      .values[widget.controller.model!.classification!]
                      .toJson(),
            onChanged: (value) {
              if (value == null) {
                widget.controller.model!.classification = null;
              } else {
                final enumValue = fromJson$Enum$ContractClassification(value);
                widget.controller.model!.classification =
                    Enum$ContractClassification.values.indexOf(enumValue);
              }
            },
          ),
          if (widget.controller.model!.isSpot) ...[
            const SizedBox(height: Insets.gutter / 2),
            AnimatedBuilder(
              animation: widget.controller,
              builder: (context, _) {
                return CWDropdownField<String>(
                  controller: widget.controller,
                  label: '${context.l10n.currency}:',
                  hintText: context.l10n.selectCurrency,
                  items: CrmCurrencyConstants.supportedCurrencyCodes,
                  validator: Validators.required,
                  initialValue: widget.controller.currencyCode,
                  onChanged: (value) {
                    if (value != widget.controller.currencyCode) {
                      widget.controller.setCurrencyCode(value);
                    }
                  },
                );
              },
            ),
          ],
          const SizedBox(height: Insets.gutter / 2),
          CWArisingPointSelectMobile(
            controller: widget.controller,
            title: '${context.l10n.selectDeliveryPoint}: ',
            onSelected: (value) {
              widget.controller.setDeliveryPoint(value);
            },
            getSelectedText: () =>
                widget.controller.model!.selectedDeliveryPoint?.aliasCode ?? '',
          ),
          const SizedBox(height: Insets.gutter / 2),
        ],
        if (!widget.controller.model!.isSpot) ...[
          AnimatedBuilder(
            animation: widget.controller,
            builder: (context, _) {
              return CWDropdownField<String>(
                controller: widget.controller,
                label: '${context.l10n.currency}:',
                hintText: context.l10n.selectCurrency,
                items: CrmCurrencyConstants.supportedCurrencyCodes,
                validator: Validators.required,
                initialValue: widget.controller.currencyCode,
                onChanged: (value) {
                  if (value != widget.controller.currencyCode) {
                    widget.controller.setCurrencyCode(value);
                  }
                },
              );
            },
          ),
          const SizedBox(height: Insets.gutter / 2),
        ],
        if (!widget.controller.model!.isSpot)
          CWContractRef(controller: widget.controller),
        CWNotes(controller: widget.controller),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
