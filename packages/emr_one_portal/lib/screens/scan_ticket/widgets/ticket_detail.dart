import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class TicketDetail extends StatelessWidget with FullExtent {
  TicketDetail({
    required this.controller,
    super.key,
  });

  final ScanTicketController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final containerWidth = MediaQuery.of(context).size.width;
    final (_, isNotDesktop) = context.getScreenFacts();

    final brandColours =
        theme.extension<EOBrandTheme>() ?? const EOBrandTheme();
    final activeLocale = Localizations.localeOf(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpacer(),
          Padding(
            padding: isNotDesktop
                ? const EdgeInsets.all(Insets.gutter)
                : const EdgeInsets.fromLTRB(
                    PortalInsets.gutterTimes10,
                    0,
                    PortalInsets.gutterTimes10,
                    0,
                  ),
            child: Card(
              elevation: 5, // Add elevation for a shadow effect
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: theme.colorScheme.outline,
                ), // Change the color and width here
                borderRadius: BorderRadius.circular(
                  15,
                ), // Adjust the radius as per your requirement
              ),
              child: Container(
                width: containerWidth,
                color: brandColours.brandColour,
                padding: const EdgeInsets.all(Insets.gutter),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'assets/images/back.png',
                            package: 'emr_one_portal',
                            color: brandColours.onBrandColour,
                            height: 15,
                          ),
                          onPressed: controller.goToScanTicket,
                        ),
                        const Spacer(),
                        Text(
                          'TRADER COPY',
                          style: textInBrandColor(
                            theme.textTheme.labelLarge,
                            brandColours,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'sample',
                          style: TextStyle(color: brandColours.brandColour),
                        ),
                      ],
                    ),
                    Text(
                      'European Metal Recycling Ltd',
                      style: textInBrandColor(
                        theme.textTheme.labelMedium,
                        brandColours,
                      ),
                    ),
                    Text(
                      controller.selectedTicket!.depot,
                      style: textInBrandColor(
                        theme.textTheme.labelMedium,
                        brandColours,
                      ),
                    ),
                    Text(
                      controller.selectedTicket!.yard.getFullAddress(),
                      style: textInBrandColor(
                        theme.textTheme.labelMedium,
                        brandColours,
                      ),
                    ),
                    Text(
                      controller.selectedTicket!.yard.telephone ??
                          'Yard telephone not available',
                      style: textInBrandColor(
                        theme.textTheme.labelMedium,
                        brandColours,
                      ),
                    ),
                    Text(
                      controller.selectedTicket!.yard.wmlExemptionNo ??
                          'Missing WML/Exemption No',
                      style: textInBrandColor(
                        theme.textTheme.labelMedium,
                        brandColours,
                      ),
                    ),
                    Text(
                      controller.selectedTicket!.yard.wasteCarrierRegNo ??
                          'Missing EMR Waste Carriers Reg. No',
                      style: textInBrandColor(
                        theme.textTheme.labelMedium,
                        brandColours,
                      ),
                    ),
                    dividerRow(colour: brandColours.onBrandColour!),
                    TwoColumns(
                      text1: 'Ticket No/Depot',
                      text2: '${controller.selectedTicket!.ticketNo} '
                          '${controller.selectedTicket!.depot}',
                    ),
                    TwoColumns(
                      text1: 'Date',
                      text2: DateToStringHelpers.formatDateByLocale(
                        controller.selectedTicket!.ticketDate,
                        activeLocale.toString(),
                      ),
                    ),
                    TwoColumns(
                      text1: 'Account No',
                      text2: controller.customerUserInfoService.userInfo
                              .partyAccountNumber ??
                          '',
                    ),
                    TwoColumns(
                      text1: 'Trader',
                      text2: controller.customerUserInfoService.userInfo.name,
                    ),
                    TicketLinesTable(
                      ticket: controller.selectedTicket!,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
