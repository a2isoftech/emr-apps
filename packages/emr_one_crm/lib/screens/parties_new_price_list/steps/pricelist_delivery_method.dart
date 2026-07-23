import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/contract_wizard/cw_select_chip.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pl_stepcore.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/mobile/collection_options.dart';
import 'package:flutter/material.dart';

class PLDeliveryMethod extends StatelessWidget {
  const PLDeliveryMethod({required this.controller, super.key});

  final PartiesPriceListWizardController controller;

  @override
  Widget build(BuildContext context) {
    final myController = controller;
    final deliveryType = myController.model?.deliveryType;
    final formKey = GlobalKey<FormState>();

    return PLStepCore(
      onNext: () {
        if (formKey.currentState?.validate() ?? false) {
          controller.nextStep();
        }
      },
      onNextText: '${context.l10n.next}: ${context.l10n.selectGrades}',
      onPrev: controller.previousStep,
      controller: controller,
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Form(
          key: formKey,
          child: FormField(
            validator: (value) {
              if (deliveryType == null) {
                return context.l10n.pleaseSelectaDeliveryType;
              }
              return null;
            },
            builder: (field) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeadingRow(
                  headings: [
                    context.l10n.deliveryMethod,
                  ],
                ),
                FormRow(
                  children: [
                    CWSelectChip<CrmDeliveryMethod>(
                      value: CrmDeliveryMethod.collected,
                      label: context.l10n.collected,
                      subTitle: '',
                      selected: deliveryType == CrmDeliveryMethod.collected ||
                          deliveryType == CrmDeliveryMethod.both,
                      onTap: (CrmDeliveryMethod method) {
                        controller.setDeliveryType(CrmDeliveryMethod.collected);
                      },
                    ),
                    CWSelectChip<CrmDeliveryMethod>(
                      value: CrmDeliveryMethod.delivered,
                      label: context.l10n.delivered,
                      subTitle: '',
                      selected: deliveryType == CrmDeliveryMethod.delivered ||
                          deliveryType == CrmDeliveryMethod.both,
                      onTap: (CrmDeliveryMethod method) {
                        controller.setDeliveryType(CrmDeliveryMethod.delivered);
                      },
                    ),
                  ],
                ),
                CollectionOptions(
                  controller: myController,
                  enabled: deliveryType == CrmDeliveryMethod.collected ||
                      deliveryType == CrmDeliveryMethod.both,
                  formKey: formKey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
