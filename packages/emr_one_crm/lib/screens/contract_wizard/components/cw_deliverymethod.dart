import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_core.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_deliverymethodcolumn.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:flutter/material.dart';

class CWDeliveryMethod extends StatelessWidget {
  const CWDeliveryMethod({
    required this.formKey,
    required this.controller,
    super.key,
  });

  final ContractController controller;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    final canEnterHaulageCharge =
        controller.hasDeliveryMethod(CrmDeliveryMethod.collected) &&
            (controller.model?.isLessCharged ?? false);
    final canSelectLocation =
        (controller.hasDeliveryMethod(CrmDeliveryMethod.collected) &&
                controller.model?.contractType == ContractType.purchase()) ||
            (controller.hasDeliveryMethod(CrmDeliveryMethod.delivered) &&
                controller.model?.contractType == ContractType.sales());

    return CWStepCore(
      controller: controller,
      child: Form(
        key: formKey,

        /// This form uses a SliverList to show the Grade list within the Form
        /// (which also scrolls), this helps with the scrolling and performance
        /// This required each component be in a SliverToBoxAdapter
        /// I did try with Form -> CustomScrollView ->
        ///   - SliverList (top half of form, e,g, orderbook/arisingpoint etc)
        ///   - SliverList Grades
        ///   - SliverList (remainder)
        /// But this failed because with that approach it efficiently throws
        /// Widgets away (which is good) but that means the validation scroll
        /// logic fails as it cannot scroll to a key which doesn't exist.
        /// see: https://api.flutter.dev/flutter/widgets/SliverToBoxAdapter-class.html#:~:text=SliverToBoxAdapter%20class%20Null%20safety,the%20usual%20box%2Dbased%20widgets.
        /// In the end compromised with SliverToBoxAdapter

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate([
                      CWDeliveryMethodColumn(
                        formKey: formKey,
                        controller: controller,
                        canEnterHaulageCharge: canEnterHaulageCharge,
                        canSelectLocation: canSelectLocation,
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            _navigation(context),
          ],
        ),
      ),
    );
  }

  Widget _navigation(BuildContext context) {
    final isLocationRequired =
        controller.hasDeliveryMethod(CrmDeliveryMethod.collected) &&
            controller.model?.contractType == ContractType.purchase();
    return EOWizardNav(
      controller: controller,
      onPrev: () {
        controller.gotoStep(ContractController.kContractDetails);
      },
      onNextText: '${context.l10n.next}: ${context.l10n.gradeSelection}',
      onNext: () {
        controller.resetInvalidKeys();
        if (isLocationRequired) {
          if ((controller.model?.selectedArisingPoints ?? []).isNotEmpty &&
              (controller.model?.selectedArisingPoints ?? [])
                  .any((d) => d.shortName == 'ANY')) {
            if (context.mounted) {
              EmrModal.showMessageBar(
                context,
                context.l10n.pleaseChooseLocation,
                messageType: MessageBarTypes.error,
              );
            }
            return;
          }
        }

        if (formKey.currentState?.validate() ?? true) {
          controller.nextStep();
        } else {
          if (controller.invalidKeys.isEmpty) {
            return;
          }

          final targetContext = controller.invalidKeys.first.currentContext;
          if (targetContext != null && targetContext.mounted) {
            Scrollable.ensureVisible(
              targetContext,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          }
        }
      },
    );
  }
}
