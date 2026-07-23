import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_appbar.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_completed.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_contractdetails/cw_contractdetailsmobile.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_deliverymethod.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_gradesgrid.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_initmodel.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_overviewstep.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_processing.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_summaryscreen/cw_summary.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:flutter/material.dart';

class ContractWizardMobile extends StatelessWidget {
  const ContractWizardMobile({
    required this.contractController,
    required this.formKey,
    super.key,
  });
  final ContractController contractController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CWAppBar.getAppBar(context, contractController),
      body: EOWizard<ContractController>(
        controller: contractController,
        contentBuilder: wizardContentBuilder,
        sheetContainerBuilder: myWizardSheetBuilder,
        sheetHeaderBuilder: myWizardHeaderBuilder,
        baseContainerBuilder: myWizardContainerBuilder,
      ),
    );
  }

  Widget wizardContentBuilder(
    BuildContext context,
    ContractController controller,
  ) {
    final stepNo = controller.getStepNumber;
    switch (stepNo) {
      case ContractController.kOverview:
        return OverviewStep(controller: controller);
      case ContractController.kInitModel:
        return CWInitModel(controller: controller);
      case ContractController.kContractDetails:
        return CWContractDetailsMobile(
          formKey: formKey,
          controller: controller,
        );
      case ContractController.kDeliveryMethod:
        return CWDeliveryMethod(formKey: formKey, controller: controller);
      case ContractController.kGradeSelect:
        return CWGradesGrid(formKey: formKey, controller: controller);
      case ContractController.kSummaryMobile:
        return CWSummary(controller: controller);
      case ContractController.kProcessingMobile:
        return CWProcessing(controller: controller);
      case ContractController.kCompletedMobile:
        return CWCompleted(controller: controller);
    }

    throw Exception('Unexpected');
  }

  Widget myWizardSheetBuilder(
    BuildContext context,
    EOWizardController controller,
    Widget child,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: Insets.gutter),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
        ),
        child: child,
      ),
    );
  }

  Widget myWizardContainerBuilder(
    BuildContext context,
    EOWizardController controller,
    Widget child,
  ) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ColoredBox(
      color: isDark
          ? Theme.of(context).colorScheme.surface
          : Theme.of(context).colorScheme.secondary,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isDark
              ? Theme.of(context).colorScheme.surfaceContainerHighest
              : Theme.of(context).colorScheme.surface,
        ),
        child: child,
      ),
    );
  }

  Widget myWizardHeaderBuilder(
    BuildContext context,
    ContractController controller,
  ) {
    final brandColours = Theme.of(context).extension<EOBrandTheme>();
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final backgroundColour = isDark
        ? Theme.of(context).colorScheme.tertiary
        : Theme.of(context).colorScheme.secondary;
    final stepNumber = controller.getStepNumber - 1;
    final isWeb = controller.appConfig.isWeb;
    return stepNumber > 0
        ? SizedBox(
            width: MediaQuery.sizeOf(context).width * (isWeb ? 0.90 : 1),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundColor: brandColours!.onBrandColour,
                        child: CircleAvatar(
                          radius: 27,
                          backgroundColor: backgroundColour,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: isDark
                                ? Theme.of(context)
                                    .colorScheme
                                    .surfaceContainerHighest
                                : Theme.of(context).colorScheme.surface,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: backgroundColour,
                              child: getIcon(controller.getStepNumber - 1),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: Insets.gutter,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.l10n
                                .getStepNumber(controller.getStepNumber - 1),
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          getTitle(controller.getStepNumber - 1, context),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: Insets.gutter / 2,
                ),
                LinearProgressIndicator(
                  value: controller.getStepNumber /
                      EmrOneCrmConstants.contractCreationTotalSteps,
                  backgroundColor: Theme.of(context).secondaryHeaderColor,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          )
        : Container();
  }

  Text getTitle(int stepNumber, BuildContext context) {
    switch (stepNumber) {
      case 1:
        return Text(context.l10n.contractHeader);
      case 2:
        return Text(context.l10n.deliveryMethod);
      case 3:
        return Text(context.l10n.gradeSelection);
      case 4:
        return Text(context.l10n.summary);
      case 5:
        return Text(context.l10n.processing);
      case 6:
        return Text(context.l10n.confirmation);
      default:
        return const Text(' ');
    }
  }

  Icon getIcon(int stepNumber) {
    switch (stepNumber) {
      case 1:
        return const Icon(
          Icons.description_outlined,
          color: Colors.white,
        );
      case 2:
        return const Icon(
          Icons.local_shipping_outlined,
          color: Colors.white,
        );
      case 3:
        return const Icon(
          Icons.category_outlined,
          color: Colors.white,
        );
      case 4:
        return const Icon(
          Icons.summarize_outlined,
          color: Colors.white,
        );
      case 5:
        return const Icon(
          Icons.rotate_left_outlined,
          color: Colors.white,
        );
      case 6:
        return const Icon(
          Icons.done,
          color: Colors.white,
        );
      default:
        return const Icon(
          Icons.info,
          color: Colors.white,
        );
    }
  }
}
