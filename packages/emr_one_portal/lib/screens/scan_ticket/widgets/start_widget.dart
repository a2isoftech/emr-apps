import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({
    required this.controller,
    super.key,
  });

  final ScanTicketController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColours =
        theme.extension<EOBrandTheme>() ?? const EOBrandTheme();
    final (_, isNotDesktop) = context.getScreenFacts();
    return Column(
      children: [
        Padding(
          padding: isNotDesktop
              ? const EdgeInsets.all(Insets.gutter)
              : const EdgeInsets.fromLTRB(
                  PortalInsets.gutterTimes10,
                  0,
                  PortalInsets.gutterTimes10,
                  0,
                ),
          child: Center(
            child: Column(
              children: [
                verticalSpacer(),
                colouredButton(
                  width: 300,
                  text: 'Click To Scan',
                  style: AccountRegistrationButtonStyles.secondaryCta(theme),
                  onPressed: () async {
                    controller.toggleSubmitting(
                      value: true,
                    );
                    final ticketUrl = await ScanHelper.startInlineCodeScan(
                      context,
                      title: 'Scan Ticket',
                    );
                    await controller.addTicketByUrl(
                      ticketUrl ?? '',
                    );
                  },
                ),
                verticalSpacer(),
                if (controller.showManualControls()) ...[
                  ManualTicketEntry(controller: controller),
                  verticalSpacer(),
                ],
                if (controller.showBasketSummary()) ...{
                  BasketSummary(
                    controller: controller,
                  ),
                  verticalSpacer(),
                  colouredButton(
                    text: 'Go To Checkout',
                    color: brandColours.brandColour,
                    textColor: brandColours.onBrandColour,
                    onPressed: () {
                      controller.toggleCheckout(value: true);
                    },
                  ),
                },
              ],
            ),
          ),
        ),
      ],
    );
  }
}
