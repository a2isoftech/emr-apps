import 'package:emr_one_elv_core/widgets/elv_wrapper.dart';
import 'package:emr_one_elv_quotes/common/common.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/row_or_column.dart';
import 'package:emr_one_elv_quotes/pages/summary/dialogs/api_error_message.dart';
import 'package:emr_one_elv_quotes/pages/summary/summary_controller.dart';
import 'package:emr_one_elv_quotes/pages/summary/widgets/collection_details_summary.dart';
import 'package:emr_one_elv_quotes/pages/summary/widgets/created_details_summary.dart';
import 'package:emr_one_elv_quotes/pages/summary/widgets/quote_abandoned.dart';
import 'package:emr_one_elv_quotes/pages/summary/widgets/summary_widgets.dart';
import 'package:provider/provider.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({
    required this.batchQuoteID,
    super.key,
  });

  final int batchQuoteID;

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  late final ValueNotifier<bool> _apiError;

  @override
  void initState() {
    super.initState();
    final controller = Provider.of<SummaryController>(context, listen: false);
    controller.init(
      id: widget.batchQuoteID,
    );
    _apiError = ValueNotifier(false);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SummaryController>(context);
    _apiError.value = controller.apiError;

    if (controller.failedLoad) {
      return Padding(
        padding: const EdgeInsets.all(Insets.gutter / 2),
        child: ElevatedButton(
          child: Text(context.l10n.retry),
          onPressed: () => controller.loadBatchQuoteEvent(
            id: controller.batchQuoteID,
          ),
        ),
      );
    }

    if (controller.batchQuote == null) {
      return const Center(child: BusyIndicator());
    }

    return SelectionArea(
      child: ElvScreenWrapper(
        header: const SummaryHeader(),
        child: Column(
          children: [
            ErrorMessaging(
              controller: controller,
              apiError: _apiError,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: Insets.gutter / 2),
                      child: RowOrColumn(
                        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: Insets.gutter / 2,
                            ),
                            child: Text(
                              '#${controller.batchQuoteID}',
                              style: EmrOneConstants.kSmallTextStyle
                                  .copyWith(fontSize: 22),
                            ),
                          ),
                          AmountOffered(
                            batchQuote: controller.batchQuote!,
                          ),
                        ],
                      ),
                    ),
                    const QuoteExpired(),
                    const QuoteAbandoned(),
                    _columnOrRow([
                      AccountInfo(
                        showBankInputs: controller.isRetailAccount &&
                            controller.activeTerritory == ElvTerritory.uk,
                        allowEditBankDetails: controller.allowEditBankDetails,
                      ),
                      const YardInfo(),
                    ]),
                    if (controller.batchQuote!.acquisition ==
                        QuoteTypeEnum.collected)
                      _columnOrRow([
                        const CollectionDetailsSummary(),
                      ]),
                    const VehicleGrid(),
                    const CreatedDetailsSummary(),
                    const ActionButtons(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _columnOrRow(List<Widget> children) {
    return MediaQuery.of(context).size.width > 1465
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children.map((child) => Expanded(child: child)).toList(),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          );
  }
}
