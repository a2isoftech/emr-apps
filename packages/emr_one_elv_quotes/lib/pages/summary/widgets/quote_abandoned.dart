import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';
import 'package:emr_one_elv_quotes/common/common.dart';
import 'package:emr_one_elv_quotes/pages/summary/summary_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuoteAbandoned extends StatelessWidget {
  const QuoteAbandoned({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SummaryController>(context);

    if (controller.batchQuote!.quoteStatus != QuoteStatusEnum.abandoned) {
      return const SizedBox();
    }

    return TitleBox(
      color: Theme.of(context).colorScheme.primary,
      borderColor: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          Text(
            '${context.l10n.quote} ${context.l10n.abandoned} '
            '- ${controller.batchQuote!.quoteAbandonReason}',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ],
      ),
    );
  }
}
