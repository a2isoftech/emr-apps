import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class YardPricesListHeader extends StatelessWidget {
  const YardPricesListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Insets.gutter / 2,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 100,
            ),
            child: Text(
              context.l10n.grade,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              context.l10n.materialDescription,
            ),
          ),
          Text(
            context.l10n.latestPrice,
          ),
        ],
      ),
    );
  }
}
