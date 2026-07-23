// ignore_for_file: lines_longer_than_80_chars

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/party/party_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class PartyDetailsList extends StatelessWidget {
  const PartyDetailsList({required this.partyController, super.key});

  final PartyController partyController;

  @override
  Widget build(BuildContext context) {
    final partyInfo = partyController.partyInfo;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: EmrOneConstants.kMediumHeadingTextStyle.copyWith(
              fontWeight: FontWeight.normal,
              color: colorScheme.onSurface,
            ),
            children: [
              TextSpan(text: context.l10n.partyDetail),
            ],
          ),
        ),
        const SizedBox(
          height: Insets.gutter / 2,
        ),
        if (!partyController.hasErrors)
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 250),
            firstChild: SizedBox(
              height: 300,
              child: SizedBox.expand(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.withAlpha(128),
                  highlightColor: Colors.grey.shade400.withAlpha(128),
                  child: const ColoredBox(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            secondChild: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  partyInfoLine(
                    context.l10n.tradeIndustryGroup,
                    partyInfo.industryGroup ?? '',
                    context,
                  ),
                  partyInfoLine(
                    context.l10n.agreeToCELEncashment,
                    '${(partyInfo.celAgreement?.agreementDate != null).asYesNo(context)}'
                    ' ${getFormattedDateStringOrBlank(partyInfo.celAgreement?.agreementDate)}',
                    context,
                  ),
                  partyInfoLine(
                    context.l10n.agreeToCFC,
                    '${(partyInfo.cfcAgreement?.agreementDate != null).asYesNo(context)}'
                    ' ${getFormattedDateStringOrBlank(partyInfo.cfcAgreement?.agreementDate)}',
                    context,
                  ),
                  partyInfoLine(
                    context.l10n.paymentTerms,
                    partyInfo.businessDetail?.paymentTerm?.taxMethod ?? '',
                    context,
                  ),
                  partyInfoLine(
                    context.l10n.creditTerms,
                    partyInfo.businessDetail?.creditTerm?.paymentTermTypeName ??
                        '',
                    context,
                  ),
                ],
              ),
            ),
            crossFadeState: !partyController.hasData
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
          ),
        if (partyController.hasErrors)
          Text('${context.l10n.partyDataCouldntBeRetreived}.'),
      ],
    );
  }

  Padding partyInfoLine(String title, String info, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title: ',
            style: EmrOneConstants.kSmallestHeadingTextStyle,
          ),
          SelectableText(
            info,
            onTap: () {
              Clipboard.setData(ClipboardData(text: info))
                  .catchError((e) {})
                  .whenComplete(() {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(context.l10n.textCopied),
                    ),
                  );
                }
              });
            },
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ],
      ),
    );
  }

  Padding partyInfoLineTelephone(
    String title,
    String info,
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title: ',
            style: EmrOneConstants.kSmallestHeadingTextStyle,
          ),
          SelectableText(
            info,
            onTap: () async {
              final launchUri = Uri(
                scheme: 'tel',
                path: '+$info',
              );

              if (await canLaunchUrl(launchUri)) {
                await launchUrl(launchUri);
              } else {
                if (context.mounted) {
                  final snackBar = SnackBar(
                    content: Text(context.l10n.couldNotOpenPhoneDialer),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              }
            },
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ],
      ),
    );
  }

  String getFormattedDateStringOrBlank(DateTime? dateTime) {
    if (dateTime == null) {
      return '';
    }
    return ' (${DateFormat.yMMMEd().format(dateTime)})';
  }
}
