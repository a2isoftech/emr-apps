import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/models/gpl_grade.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_contractdetails/cw_contractdetailsmobilecolumn.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_contractdetails/cw_gradelistitem.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_core.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:flutter/material.dart';

class CWContractDetailsMobile extends StatelessWidget {
  const CWContractDetailsMobile({
    required this.formKey,
    required this.controller,
    super.key,
  });

  final ContractController controller;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    final searchRegEx = RegExp(
      controller.gradeQuery ?? '',
      caseSensitive: false,
    );

    final gradesGrouped = controller.model == null
        ? <String, List<GplGrade>>{}
        : groupBy(
            controller.model!.gplGrades.where(
              (grade) =>
                  grade.gradeCode.contains(searchRegEx) ||
                  grade.gradeType.contains(searchRegEx) ||
                  grade.gradeGroup.contains(searchRegEx),
            ),
            (GplGrade g) =>
                '${g.gradeCode}_${(g.brokerReference ?? '').trim()}',
          );
    final gradeListItems = <CWGradeListItem>[];

    for (final k in gradesGrouped.keys) {
      gradeListItems.add(CWGradeListItem(isGroupHeader: true, groupTitle: k));

      for (final g in gradesGrouped[k]!) {
        gradeListItems.add(CWGradeListItem(grade: g));
      }
    }

    final hasCollected =
        controller.hasDeliveryMethod(CrmDeliveryMethod.collected);

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
                      CWContractDetailsMobileColumn(
                        formKey: formKey,
                        controller: controller,
                        hasCollected: hasCollected,
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
        controller.gotoStep(ContractController.kOverview);
      },
      onNextText: '${context.l10n.next}: ${context.l10n.deliveryMethod}',
      onNext: () {
        controller.resetInvalidKeys();
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
      },
    );
  }
}
