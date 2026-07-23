import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class MoveCarBodyConfirmationText extends StatelessWidget {
  const MoveCarBodyConfirmationText({
    required this.carBodyFormattedName,
    required this.partNamesNotYetDismanted,
    super.key,
  });
  final String carBodyFormattedName;
  final String partNamesNotYetDismanted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyMedium,
              text: context.l10n.moveCarBodyConfirmationText,
              children: [
                TextSpan(
                  text: carBodyFormattedName,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '? ${context.l10n.thisIs} ',
                ),
                TextSpan(
                  text: context.l10n.finalWord,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' ${context.l10n.andCannotBeReverted}.',
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
              text: partNamesNotYetDismanted,
              children: [
                TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  text: ' ${context.l10n.isStillOnTheVehicle} '
                      '${context.l10n.movedWith} ',
                ),
                TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                  text: '$carBodyFormattedName.',
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyMedium,
              text: '${context.l10n.thisActionWillAlsoMarkTheVehicleAs} ',
              children: [
                TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                  text: '${context.l10n.dismantled}.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
