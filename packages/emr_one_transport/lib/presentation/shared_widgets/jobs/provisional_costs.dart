import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/widgets/card/emr_card.dart';
import 'package:emr_one_transport/data/models/common/provisional_cost_details.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class ProvisionalCosts extends StatelessWidget {
  const ProvisionalCosts({
    required this.options,
    required this.editPriceMatrixUrl,
    super.key,
  });

  final List<ProvisionalCostDetails> options;
  final String editPriceMatrixUrl;

  String _getProvisionalDisplayCost(ProvisionalCostDetails rate) {
    final formatter = rate.currencyCode!.isEmpty
        ? NumberFormat.currency(locale: 'en_US', symbol: r'$')
        : NumberFormat.simpleCurrency(name: rate.currencyCode);

    return '${formatter.format(rate.finalRate ?? 0)} / ${rate.uom}';
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Wrap(
          children: List.generate(options.length, (index) {
            final rate = options[index];
            final editUrl =
                '$editPriceMatrixUrl${rate.haulagePriceMatrixId ?? '-1'}';

            return Container(
              width: 175,
              height: 75,
              padding: EdgeInsets.zero,
              child: EmrCard(
                title: rate.accountCode,
                padding: EdgeInsets.zero,
                trailing: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      launchUrl(
                        Uri.parse(editUrl),
                        webOnlyWindowName: '_blank',
                      );
                    },
                    child: Tooltip(
                      message: context.l10n.editDisplay,
                      child: const Icon(size: Insets.gutter, Icons.edit),
                    ),
                  ),
                ),
                child: Center(child: Text(_getProvisionalDisplayCost(rate))),
              ),
            );
          }),
        );
      },
    );
  }
}
