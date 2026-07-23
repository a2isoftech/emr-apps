import 'dart:math';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class EmrPortalCard extends StatelessWidget {
  const EmrPortalCard({
    required this.model,
    required this.userInfo,
    super.key,
  });

  final HomePageModel model;
  final AccountUserInfo userInfo;

  @override
  Widget build(BuildContext context) {
    final screenWidth = context.screenWidth();
    const padWidth = Insets.gutter * 4;
    const maxPoss = 580.0 - padWidth;
    final actualWidth = screenWidth - padWidth;
    final scaleRatio = actualWidth / maxPoss;
    final double fh = min(56, 56.0 * scaleRatio);
    final double fh2 = min(22, 22.0 * scaleRatio);
    final (_, isNotDesktop) = context.getScreenFacts();
    final cardWidth = isNotDesktop ? screenWidth : screenWidth / 3;
    final cardHeight = (cardWidth / 16) * 9;

    final qrCodeHeight = context.qrCodeHeight();
    final partyAccountNumber = userInfo.partyAccountNumber ?? '';
    final qrCodeSize = cardWidth / 3;
    final qrCode = SizedBox(
      height: qrCodeSize,
      width: qrCodeSize,
      child: HelpPopup(
        clickable: EmrQrCode(
          value: partyAccountNumber,
          colour: Colors.white,
        ),
        addPopupIndication: false,
        title: context.l10n.accountQrCode,
        popup: SizedBox(
          height: qrCodeHeight,
          width: qrCodeHeight,
          child: EmrQrCode(
            value: partyAccountNumber,
          ),
        ),
      ),
    );

    return Center(
      child: Container(
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [EmrColours.primaryBlue, Color.fromARGB(255, 9, 93, 172)],
            stops: [
              0.4,
              1.0,
            ],
            end: Alignment(-1, -0.5),
            begin: Alignment(1, 0.5),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(3, 3),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.circular(Insets.gutter),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Insets.gutter),
          child: Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'EMR\n',
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: EmrColours.primaryGreen,
                                  height: 0.9,
                                  fontSize: fh,
                                  fontWeight: FontWeight.bold,
                                ),
                        children: <TextSpan>[
                          TextSpan(
                            text: context.l10n.card,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  color: EmrColours.secondaryCyan,
                                  height: 0.9,
                                  fontSize: fh,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          qrCode,
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.l10n.customerName.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: EmrColours.secondaryCyan,
                                    fontSize: fh2,
                                  ),
                            ),
                            Text(
                              userInfo.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontSize: fh2,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  context.l10n.accountNumber.toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: EmrColours.secondaryCyan,
                                        fontSize: fh2,
                                      ),
                                ),
                                Text(
                                  userInfo.partyAccountNumber ?? '',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontSize: fh2,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
