import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/summary/summary_controller.dart';
import 'package:emr_one_elv_quotes/pages/summary/widgets/summary_section_wrapper.dart';
import 'package:emr_one_elv_quotes/pages/summary/widgets/summary_text_display.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CreatedDetailsSummary extends StatefulWidget {
  const CreatedDetailsSummary({
    super.key,
  });

  @override
  State<CreatedDetailsSummary> createState() => _CreatedDetailsSummaryState();
}

class _CreatedDetailsSummaryState extends State<CreatedDetailsSummary> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SummaryController>(context);
    return SummarySectionWrapper(
      title: context.l10n.recordInformation,
      body: CreatedDetailsSummaryBody(
        batchQuote: controller.batchQuote,
      ),
    );
  }
}

class CreatedDetailsSummaryBody extends StatelessWidget {
  const CreatedDetailsSummaryBody({
    required this.batchQuote,
    super.key,
  });

  final BatchQuoteModel? batchQuote;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter / 2,
        vertical: Insets.gutter / 2,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: Insets.gutter,
        ),
        child: Column(
          children: [
            _columnOrRow(
              [
                SummaryTextFlexibleRowDisplay(
                  label: context.l10n.createdBy,
                  text: batchQuote!.createdBy,
                ),
                if (batchQuote?.modifiedBy != null)
                  SummaryTextFlexibleRowDisplay(
                    label: context.l10n.modifiedBy,
                    text: batchQuote!.modifiedBy!,
                  ),
              ],
              context,
            ),
            _columnOrRow(
              [
                SummaryTextFlexibleRowDisplay(
                  label: context.l10n.createdDate,
                  text: DateFormat('d MMM yyyy').format(batchQuote!.created),
                ),
                if (batchQuote?.modifiedDate != null)
                  SummaryTextFlexibleRowDisplay(
                    label: context.l10n.modifiedDate,
                    text: DateFormat('d MMM yyyy')
                        .format(batchQuote!.modifiedDate!),
                  ),
              ],
              context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _columnOrRow(List<Widget> children, BuildContext context) {
    return MediaQuery.of(context).size.width > 700
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children
                .map(
                  (child) => Expanded(
                    child: child,
                  ),
                )
                .toList(),
          )
        : Column(
            children: children,
          );
  }
}
