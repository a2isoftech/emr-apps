import 'package:emr_one_elv_core/models/collection_operator.dart';
import 'package:emr_one_elv_core/models/quote_models/collection_detail.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/summary/dialogs/edit_collection_details_dialog.dart';
import 'package:emr_one_elv_quotes/pages/summary/summary_controller.dart';
import 'package:emr_one_elv_quotes/pages/summary/widgets/summary_section_wrapper.dart';
import 'package:emr_one_elv_quotes/pages/summary/widgets/summary_text_display.dart';
import 'package:provider/provider.dart';

class CollectionDetailsSummary extends StatefulWidget {
  const CollectionDetailsSummary({super.key});

  @override
  State<CollectionDetailsSummary> createState() =>
      _CollectionDetailsSummaryState();
}

class _CollectionDetailsSummaryState extends State<CollectionDetailsSummary> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SummaryController>(context);

    final batchQuote = controller.batchQuote!;
    final collectionDetail = batchQuote.collectionAndBankDetail;
    return SummarySectionWrapper(
      title: context.l10n.collectionDetails,
      body: CollectionDetailSummaryBody(collectionDetail: collectionDetail),
      onEditButtonPressed: batchQuote.quoteStatus == QuoteStatusEnum.abandoned
          ? null
          : () {
              if (!context.mounted) return;

              editCollectionDetailDialog(
                context: context,
                collectionDetail: collectionDetail,
                addressService: controller.addressService,
                collectionOperatorList: _getCollectionOperatorList(
                  controller,
                  context,
                ),
                isRetailAccount: controller.isRetailAccount,
                yardService: controller.yardService,
                onSaveButtonPressed: (updatedCollectionDetail) async {
                  await controller.updateCollectionDetail(
                    batchQuote.id,
                    updatedCollectionDetail,
                    controller.activeTerritory.territoryCode(),
                  );
                },
                activeTerritory: controller.activeTerritory,
              );
            },
    );
  }

  Future<List<CollectionOperator>> Function() _getCollectionOperatorList(
    SummaryController controller,
    BuildContext context,
  ) {
    return () async {
      final yardCode =
          controller.batchQuote!.yard?.yardCode ??
          controller.batchQuote!.yardCode;

      final collectionOperators = controller.collectionOperators;

      if (collectionOperators.isNotEmpty &&
          collectionOperators[yardCode] != null) {
        return collectionOperators[yardCode]!;
      }

      unawaited(EmrDialog.busy(context, titleText: context.l10n.loading));

      await controller.getCollectionOperatorsByHaulagePriceMatrices();

      if (context.mounted) {
        context.pop();
      }

      return controller.collectionOperators[yardCode]!;
    };
  }
}

class CollectionDetailSummaryBody extends StatelessWidget {
  const CollectionDetailSummaryBody({
    required this.collectionDetail,
    super.key,
  });

  final CollectionAndBankDetail? collectionDetail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter / 2,
        vertical: Insets.gutter / 2,
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: Insets.gutter),
        child: Column(
          children: [
            _columnOrRow([
              SummaryTextFlexibleRowDisplay(
                label: context.l10n.collectionOperator,
                text: collectionDetail?.collectionAccount ?? '',
              ),
              SummaryTextFlexibleRowDisplay(
                label: context.l10n.collectionStatus,
                text:
                    collectionDetail?.collectionStatus ??
                    context.l10n.pendingAllocation,
              ),
            ], context),
            _columnOrRow([
              SummaryTextFlexibleRowDisplay(
                label: context.l10n.collectionAddress,
                text: collectionDetail?.collectionAddress.shortAddress ?? '',
              ),
              SummaryTextFlexibleRowDisplay(
                label: context.l10n.appointmentDate,
                text: collectionDetail?.appointmentDateFormatted ?? '',
              ),
            ], context),
          ],
        ),
      ),
    );
  }

  Widget _columnOrRow(List<Widget> children, BuildContext context) {
    return MediaQuery.of(context).size.width > 700
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children.map((child) => Expanded(child: child)).toList(),
          )
        : Column(children: children);
  }
}
