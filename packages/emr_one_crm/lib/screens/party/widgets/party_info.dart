import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/party/party_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class PartyInfoList extends StatelessWidget {
  const PartyInfoList({required this.partyController, super.key});

  final PartyController partyController;

  @override
  Widget build(BuildContext context) {
    final partyInfo = partyController.partyInfo;
    final mainContact = partyInfo.contacts?.firstWhereOrNull(
      (element) => (element.contactTypes ?? []).any((x) => x == 'MAIN'),
    );
    final address = partyInfo.addresses.first;
    return Padding(
      padding: const EdgeInsets.only(top: Insets.gutter / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                      context.l10n.accountOwner,
                      partyInfo.primaryManager == null ||
                              (partyInfo.primaryManager!.name ?? '') == ''
                          ? 'No Primary Manager set'
                          : partyInfo.primaryManager!.name ?? '',
                      context,
                    ),
                    partyInfoLine(
                      context.l10n.primaryContactName,
                      '${mainContact?.firstName} ${mainContact?.lastName}',
                      context,
                    ),
                    partyInfoLine(
                      context.l10n.primaryContactEmail,
                      mainContact?.contactPreferences.email?.value ?? '',
                      context,
                    ),
                    partyInfoLineTelephone(
                      context.l10n.primaryContactTel,
                      mainContact?.contactPreferences.mobile?.value ??
                          mainContact?.contactPreferences.phone?.value ??
                          '',
                      context,
                    ),
                    partyInfoLine(
                      context.l10n.address,
                      _mapAddress(address),
                      context,
                    ),
                    partyInfoLine(
                      context.l10n.defaultYard,
                      partyInfo.preferredYard ?? '',
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
      ),
    );
  }

  static String _mapAddress(
    Address? data,
  ) {
    final address = <String?>[
      data?.address1,
      data?.address2,
      data?.address3,
      data?.address4,
      data?.address5,
      data?.address6,
      data?.postCode,
    ];
    var partyAddress = '';
    for (final addressLine in address) {
      if (addressLine != null && addressLine.isNotEmpty) {
        if (addressLine == address.last) {
          partyAddress = '$partyAddress$addressLine';
        } else {
          partyAddress = '$partyAddress$addressLine,\n';
        }
      }
    }
    return partyAddress;
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
}
