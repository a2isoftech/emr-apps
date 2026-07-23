import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/contract_wizard/cw_select_chip.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CWDeliveryMethodSelectMobile extends StatelessWidget {
  const CWDeliveryMethodSelectMobile({
    required this.controller,
    required this.formKey,
    super.key,
  });

  final ContractController controller;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    // NOTE: Temporary flag —
    // currently used to restrict selection to one delivery method.
    // In future, both delivery methods will be allowed by default;
    const isBothAllowed = false;
    
    return ChangeNotifierProvider.value(
      value: controller,
      builder: (context, child) => FormField(
        validator: (value) {
          if (controller.hasAnyDeliveryMethod() == false) {
            controller.addInvalidKey(controller.deliveryMethodKey!);
            return context.l10n.pleaseSelectAtLeastOneDeliveryMethod;
          }
          return null;
        },
        builder: (field) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormHeadingRow(
              key: controller.deliveryMethodKey,
              headings: [
                '${context.l10n.deliveryMethod}:',
              ],
            ),
            FormRow(
              children: [
                CWSelectChip<CrmDeliveryMethod>(
                  value: CrmDeliveryMethod.collected,
                  label: context.l10n.collected,
                  subTitle: '',
                  selected: controller.model!.deliveryMethods
                      .contains(CrmDeliveryMethod.collected),
                  onTap: (CrmDeliveryMethod method) {
                    final isSelected = controller.model!.deliveryMethods
                        .contains(CrmDeliveryMethod.collected);

                    if (isSelected) {
                      controller
                          .removeDeliveryMethod(CrmDeliveryMethod.collected);
                      controller.removeDeliveryMethod(
                        CrmDeliveryMethod.collectedFullyCharged,
                      );
                      controller.removeDeliveryMethod(
                        CrmDeliveryMethod.collectedLessCharge,
                      );
                      controller.setFullyCharged(fullyCharged: false);
                      controller.model!.hasCToF = false;
                    } else {
                      if (!isBothAllowed) {
                        controller
                            .removeDeliveryMethod(CrmDeliveryMethod.delivered);
                      }
                      controller.addDeliveryMethod(CrmDeliveryMethod.collected);
                    }

                    if (controller.gradesKey?.currentContext != null) {
                      controller.scrollToKey(controller.gradesKey!);
                    }
                    formKey.currentState!.reset();
                  },
                ),
                CWSelectChip<CrmDeliveryMethod>(
                  value: CrmDeliveryMethod.delivered,
                  label: context.l10n.delivered,
                  subTitle: '',
                  selected: controller.model!.deliveryMethods
                      .contains(CrmDeliveryMethod.delivered),
                  onTap: (CrmDeliveryMethod method) {
                    final isSelected = controller.model!.deliveryMethods
                        .contains(CrmDeliveryMethod.delivered);

                    if (isSelected) {
                      controller
                          .removeDeliveryMethod(CrmDeliveryMethod.delivered);
                    } else {
                      if (!isBothAllowed) {
                        controller
                            .removeDeliveryMethod(CrmDeliveryMethod.collected);
                      }
                      controller.addDeliveryMethod(CrmDeliveryMethod.delivered);
                    }

                    if (controller.gradesKey?.currentContext != null) {
                      controller.scrollToKey(controller.gradesKey!);
                    }
                    formKey.currentState!.reset();
                  },
                ),
              ],
            ),
            if (field.hasError && !controller.hasAnyDeliveryMethod())
              Text(
                field.errorText ?? context.l10n.unknownError,
                style: const TextStyle(color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}
