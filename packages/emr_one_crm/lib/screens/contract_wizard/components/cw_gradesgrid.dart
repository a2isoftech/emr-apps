import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/routing/nested/nested_page_mobile_route.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_core.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_gradepricing.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_gradeselectgrid.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:flutter/material.dart';

class CWGradesGrid extends StatelessWidget {
  const CWGradesGrid({
    required this.formKey,
    required this.controller,
    super.key,
  });

  final ContractController controller;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
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
                      CWGradeSelectGrid(
                        formKey: formKey,
                        controller: controller,
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
    return EOWizardNav(
      controller: controller,
      onPrev: () {
        controller.gotoStep(ContractController.kDeliveryMethod);
      },
      onNextText: controller.isGplCreate.value && controller.isFixed
          ? '${context.l10n.next}: ${context.l10n.modifyPricing}'
          : '${context.l10n.next}: ${context.l10n.summary}',
      onNext: () {
        controller.resetInvalidKeys();
        if (controller.model!.regenerateGrades == true ||
            (controller.isGplCreate.value && controller.isFixed)) {
          Navigator.of(context).push<void>(
            NestedPageMobileRoute(
              title: controller.isSpot
                  ? Text(context.l10n.createASpotContract)
                  : Text(context.l10n.createAFixedContract),
              child: CWGradePricing(controller: controller, formKey: formKey),
              leading: BackButton(
                color: Colors.white,
                onPressed: () {
                  controller.revertBack();
                  Navigator.pop(context);
                },
              ),
            ),
          );
        } else {
          if (formKey.currentState?.validate() ?? true) {
            controller.nextStep();
          } else {
            if (controller.invalidKeys.isEmpty) {
              return;
            }

            final targetContext = controller.invalidKeys.first.currentContext;
            if (targetContext != null) {
              Scrollable.ensureVisible(
                targetContext,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
              );
            }
          }
        }
      },
    );
  }
}
