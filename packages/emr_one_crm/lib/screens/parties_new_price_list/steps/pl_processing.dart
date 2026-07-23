import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlProcessing extends StatelessWidget {
  const PlProcessing({required this.controller, super.key});

  final PartiesPriceListWizardController controller;

  @override
  Widget build(BuildContext context) {
    final brandColours = Theme.of(context).extension<EOBrandTheme>()!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.l10n.savingPriceList.toUpperCase(),
          style: kIsWeb
              ? EmrOneConstants.kSmallHeadingTextStyle
              : EmrOneConstants.kSmallHeadingTextStyle
                  .copyWith(color: brandColours.onBrandColour),
        ),
        Center(
          child: CircularProgressIndicator(
            color: kIsWeb ? null : brandColours.onBrandColour,
          ),
        ),
      ],
    );
  }
}
