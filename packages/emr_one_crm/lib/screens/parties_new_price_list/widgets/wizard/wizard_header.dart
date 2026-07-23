import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

Widget myWizardHeaderBuilder(
  BuildContext context,
  PartiesPriceListWizardController controller,
) {
  final brandColours = Theme.of(context).extension<EOBrandTheme>();
  final isDark = Theme.of(context).brightness == Brightness.dark;
  final backgroundColour = isDark
      ? Theme.of(context).colorScheme.tertiary
      : Theme.of(context).colorScheme.secondary;

  return SizedBox(
    width: MediaQuery.sizeOf(context).width,
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
                        ? Theme.of(context).colorScheme.surfaceContainerHighest
                        : Theme.of(context).colorScheme.surface,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: backgroundColour,
                      child: getIcon(controller.getStepNumber),
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
                    context.l10n.getStepNumber(controller.getStepNumber),
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  getTitle(controller.getStepNumber, context),
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
              EmrOneCrmConstants.pricelistCreationTotalSteps,
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          valueColor: AlwaysStoppedAnimation<Color>(
            Theme.of(context).primaryColor,
          ),
        ),
      ],
    ),
  );
}

Text getTitle(int stepNumber, BuildContext context) {
  switch (stepNumber) {
    case 1:
      return Text(context.l10n.gpl);
    case 2:
      return Text(context.l10n.grades);
    case 3:
      return Text(context.l10n.rates);
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
        Icons.category_outlined,
        color: Colors.white,
      );
    case 3:
      return const Icon(
        Icons.currency_pound_outlined,
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
        Icons.info_outlined,
        color: Colors.white,
      );
  }
}
