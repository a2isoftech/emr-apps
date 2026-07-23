import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class MarketInfoWidget extends StatelessWidget {
  const MarketInfoWidget({required this.marketInfo, super.key});
  final MarketIndicationModel marketInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ExpandableInfo(
                icon: Icons.trending_up,
                title: context.l10n.msgMarketIndication,
                contextWidgets: [
                  Text(
                    '${context.l10n.msgTotalMWP}: '
                    '${marketInfo.currency.getCurrencySymbol()}'
                    ' ${marketInfo.totalMWPValue}',
                    style: EmrOneConstants.kSmallestHeadingTextStyle,
                  ),
                  ...marketInfo.copperRates.entries.map(
                    (rate) => Text(
                      '${context.l10n.msgCMPCopper} '
                      ' ${rate.key}: '
                      '${marketInfo.currency.getCurrencySymbol()}'
                      ' ${rate.value}',
                      style: EmrOneConstants.kSmallestHeadingTextStyle,
                    ),
                  ),
                  Text(
                    '${context.l10n.msgUpdated}: '
                    '${marketInfo.updatedDate.getLocalDate(
                      context,
                    )}',
                    style: EmrOneConstants.kSmallestHeadingTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
