import 'package:emr_one_elv_core/extensions/small_screen_check.dart';
import 'package:emr_one_elv_quotes/format.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/row_or_column.dart';
import 'package:emr_one_elv_quotes/pages/summary/summary_controller.dart';
import 'package:emr_one_elv_quotes/pages/summary/widgets/summary_text_display.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class VehicleGrid extends StatelessWidget {
  const VehicleGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SummaryController>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.gutter / 2,
            left: Insets.gutter / 2,
          ),
          child: Text(
            context.l10n.vehicleDetails,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller.batchQuote!.quotes.length,
          itemBuilder: (context, index) => VehicleTile(
            vehicleQuote: controller.batchQuote!.quotes[index],
          ),
        ),
      ],
    );
  }
}

class VehicleTile extends StatelessWidget {
  const VehicleTile({required this.vehicleQuote, super.key});

  final ActiveQuote vehicleQuote;

  @override
  Widget build(BuildContext context) {
    final vehicle = vehicleQuote.vehicleDescription;
    final config = vehicleQuote.vehicleConfiguration;
    final controller = Provider.of<SummaryController>(context);
    final showVinWithVrn = controller.activeTerritory == ElvTerritory.uk &&
        vehicle.vin != null &&
        vehicle.vin!.trim().isNotEmpty;
    final displayMultipleCats = controller.activeTerritory.displayMultipleCats(
      ukDisplayMultipleCats: controller.ukDisplayMultipleCats,
      usaDisplayMultipleCats: controller.usaDisplayMultipleCats,
    );
    return Padding(
      padding: const EdgeInsets.all(
        Insets.gutter / 2,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.onSurface,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: Insets.gutter / 2,
            left: Insets.gutter / 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowOrColumn(
                mainAxisSize: MainAxisSize.max,
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: Insets.gutter / 2,
                          left: Insets.gutter / 2,
                        ),
                        child: Row(
                          children: [
                            Text(
                              // ignore: lines_longer_than_80_chars
                              '${controller.activeTerritory.vehicleIdentifierTitle(context)}: ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              vehicle.identifier(controller.activeTerritory),
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            if (showVinWithVrn) ...[
                              const SizedBox(width: Insets.gutter),
                              Text(
                                '${context.l10n.vin}:',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(width: Insets.gutter / 2),
                              Text(
                                vehicle.vin!,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(Insets.gutter / 2),
                        child: Text(
                          '${vehicle.year} ${vehicle.make} '
                          '${vehicle.model} ${vehicle.fuelType} '
                          '${vehicle.trim ?? ''}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      if (vehicleQuote.quoteStatus ==
                          QuoteStatusEnum.inspected) ...[
                        Tooltip(
                          message: context.l10n.inspectionPhotos,
                          child: IconButton(
                            icon: const Icon(Icons.image),
                            onPressed: () {
                              context.goNamed(
                                ElvQuotesNamedRoutes.elvVehicleDocuments,
                                extra: controller,
                                params: {
                                  'batchQuoteId':
                                      controller.batchQuoteID.toString(),
                                  'quoteId': vehicleQuote.id.toString(),
                                },
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: Insets.gutter),
                        if (controller.allowInspectionReopen) ...[
                          Tooltip(
                            message: context.l10n.reopenInspection,
                            child: IconButton(
                              icon: const Icon(Icons.settings_backup_restore),
                              onPressed: () => _reopenInspection(
                                context,
                                controller,
                              ),
                            ),
                          ),
                          const SizedBox(width: Insets.gutter),
                        ],
                        Tooltip(
                          message: context.l10n.downloadQuoteRemittance,
                          child: IconButton(
                            icon: const Icon(Icons.compare_rounded),
                            onPressed: () => controller
                                .viewQuoteVsInspection(vehicleQuote.id),
                          ),
                        ),
                      ],
                      Padding(
                        padding: const EdgeInsets.all(Insets.gutter),
                        child: Container(
                          width: 228,
                          height: 44,
                          decoration: BoxDecoration(
                            color: ElvConstants.elvLightBlue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${context.l10n.valueOffered}: ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                ),
                                Text(
                                  Format.money(vehicleQuote.total),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(Insets.gutter),
                child: _wrapOrRow(
                  isSmallScreen: SmallScreenCheck().isSmallScreen(context),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SummaryTextRowDisplay(
                          label: context.l10n.alloys,
                          text: config.alloyWheels.toString(),
                        ),
                        SummaryTextRowDisplay(
                          label: context.l10n.steels,
                          text: config.steelWheels.toString(),
                        ),
                        if (controller.activeTerritory.canShowChrome(
                          ukAllowChromeWheels: controller.ukAllowChromeWheels,
                          usaAllowChromeWheels: controller.usaAllowChromeWheels,
                        ))
                          SummaryTextRowDisplay(
                            label: context.l10n.chromes,
                            text: config.chromeWheels.toString(),
                          ),
                        if (controller.batchQuote!.acquisition ==
                                QuoteTypeEnum.collected &&
                            !(vehicleQuote.haulageCost?.isNaN ?? false))
                          SummaryTextRowDisplay(
                            label: context.l10n.haulagePrice,
                            text: Format.money(
                              vehicleQuote.haulageCost!,
                            ),
                          ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SummaryTextRowDisplay(
                          label: context.l10n.battery,
                          text: _boolToString(config.hasBattery),
                        ),
                        if (displayMultipleCats) ...[
                          SummaryTextRowDisplay(
                            label: context.l10n.preCats,
                            text: config.numOfPreCats.toString(),
                          ),
                          SummaryTextRowDisplay(
                            label: context.l10n.pipeCats,
                            text: config.numOfPipeCats.toString(),
                          ),
                        ],
                        if (!displayMultipleCats)
                          SummaryTextRowDisplay(
                            label: context.l10n.originalCat,
                            text: _boolToString(config.hasOriginalCat),
                          ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (controller.activeTerritory.territoryCode() ==
                            ElvTerritory.uk.territoryCode())
                          SummaryTextRowDisplay(
                            label: context.l10n.kerbWeight,
                            text: _vehicleCurbWeight(vehicle),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _boolToString(bool? value) {
    if (value == null) return 'No';
    return value ? 'Yes' : 'No';
  }

  Widget _wrapOrRow({
    required List<Widget> children,
    required bool isSmallScreen,
  }) {
    if (isSmallScreen) {
      return Wrap(
        children: children,
      );
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children
          .map(
            (e) => Expanded(
              child: e,
            ),
          )
          .toList(),
    );
  }

  String _vehicleCurbWeight(VehicleDetail vehicle) {
    return '${NumberFormat.decimalPattern().format(vehicle.curbWeight)} '
        '${vehicle.curbWeightUom?.value}';
  }

  void _reopenInspection(BuildContext context, SummaryController controller) {
    EmrDialog.noYes(
      context,
      titleText: context.l10n.confirmation,
      contentText: context.l10n.areYouSureReopenInspection,
      onYes: () async {
        unawaited(
          EmrDialog.busy(
            context,
            titleText: context.l10n.reopeningInspection,
          ),
        );
        final inspectionReopened =
            await controller.reopenInspection(vehicleQuote.id);
        if (context.mounted) {
          context.pop();
        }
        if (inspectionReopened) {
          if (context.mounted) {
            await EmrDialog.ok(
              context,
              titleText: context.l10n.success,
              contentText: context.l10n.reopenInspectionSuccess,
            );
          }
        } else {
          if (context.mounted) {
            await EmrDialog.ok(
              context,
              titleText: context.l10n.error,
              contentText: context.l10n.reopenInspectionError,
            );
          }
        }
      },
    );
  }
}
