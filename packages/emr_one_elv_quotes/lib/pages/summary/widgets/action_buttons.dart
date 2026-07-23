import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_core/styles/elv_button_styles.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/email_button.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/row_or_column.dart';
import 'package:emr_one_elv_quotes/pages/summary/summary_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SummaryController>(context);
    final fullAccess = !controller.readOnly;

    return RowOrColumn(
      rowMainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        if (fullAccess)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Insets.gutter / 2,
            ),
            child: ElevatedButton(
              style: elvSecondaryButtonStyle(context),
              onPressed: () => context.goNamed(
                NamedRoutes.elvQuickQuote,
                params: {
                  'batchQuoteId':
                      '${controller.batchQuote!.batchQuoteBundleId}clone',
                },
              ),
              child: Text(
                context.l10n.cloneQuote,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
        if (kIsWeb)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Insets.gutter / 2,
            ),
            child: OutlinedButton(
              onPressed: () => controller.quoteService
                  .downloadExcel(controller.batchQuoteID),
              child: Text(
                context.l10n.exportToExcel,
              ),
            ),
          ),
        if (fullAccess)
          Padding(
            padding: const EdgeInsets.all(Insets.gutter / 2),
            child: EmailButton(
              customersEmail: controller.batchQuote!.accountModel!.email,
              onSend: controller.sendCustomerEmail,
              emailUserEnabled: true,
              quoteStatus: controller.batchQuote!.quoteStatus,
            ),
          ),
        if (fullAccess)
          Padding(
            padding: const EdgeInsets.all(Insets.gutter / 2),
            child: OutlinedButton(
              onPressed: () {
                context.goNamed(
                  NamedRoutes.elvQuickQuote,
                  params: {
                    'batchQuoteId': 'new',
                  },
                );
              },
              child: Text(
                context.l10n.newQuote,
              ),
            ),
          ),
        if (fullAccess &&
            controller.batchQuote?.quoteStatus != QuoteStatusEnum.abandoned &&
            controller.abandonReasons.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(Insets.gutter / 2),
            child: FilledButton(
              onPressed: () {
                final searchController = TextEditingController();
                showElvSelectionDialog<String>(
                  context: context,
                  items: controller.abandonReasons,
                  displayString: (s) => s,
                  onTap: (abandonReason) async {
                    context.pop();
                    unawaited(
                      EmrDialog.busy(
                        context,
                        titleText: context.l10n.abandoningQuote,
                      ),
                    );
                    await controller.abandonBatchQuote(abandonReason);
                    if (context.mounted) {
                      context.pop();
                    }
                  },
                  searchController: searchController,
                  title: '${context.l10n.select} ${context.l10n.abandonReason}',
                  label: context.l10n.abandonReason,
                );
              },
              child: Text(
                context.l10n.abandonQuote,
              ),
            ),
          ),
      ],
    );
  }
}
