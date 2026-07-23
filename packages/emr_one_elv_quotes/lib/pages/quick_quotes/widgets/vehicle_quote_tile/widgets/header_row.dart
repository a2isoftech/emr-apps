import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_core/extensions/small_screen_check.dart';
import 'package:emr_one_elv_core/models/models.dart';
import 'package:emr_one_elv_core/models/quote_models/active_quote.dart';
import 'package:emr_one_elv_quotes/common/vehicle_amount_offered.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VehicleQuoteTileHeader extends StatelessWidget {
  const VehicleQuoteTileHeader({
    required this.context,
    required this.controller,
    required this.quote,
    required this.vehicleDescription,
    required this.index,
    super.key,
  });

  final BuildContext context;
  final QuickQuoteController controller;
  final ActiveQuote quote;
  final VehicleDetail vehicleDescription;
  final int index;

  @override
  Widget build(BuildContext context) {
    if (SmallScreenCheck().isSmallScreen(context)) {
      return ColoredBox(
        color: ElvConstants.elvBlueHighlight,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _indexDisplay(context, 64),
                _deleteButton(context),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: Insets.gutter / 2,
                top: Insets.gutter / 2,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _headerInfoRow(
                    controller.activeTerritory.vehicleIdentifierTitle(context),
                    vehicleDescription.identifier(controller.activeTerritory),
                    selectable: true,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  _headerInfoRow(
                    context.l10n.make,
                    vehicleDescription.make,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            ),
            VehicleAmountOffered(
              activeQuote: quote,
              controller: controller,
            ),
          ],
        ),
      );
    }

    return ColoredBox(
      color: ElvConstants.elvBlueHighlight,
      child: Row(
        children: [
          _indexDisplay(context, 110),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _headerInfoRow(
                            controller.activeTerritory
                                .vehicleIdentifierTitle(context),
                            vehicleDescription
                                .identifier(controller.activeTerritory),
                            selectable: true,
                          ),
                          _headerInfoRow(
                            context.l10n.make,
                            vehicleDescription.make,
                          ),
                        ],
                      ),
                      // For small screen widths this stops the UI from
                      // overflowing
                      // by removing some of the information on the screen.
                      if (MediaQuery.of(context).size.width >= 1200)
                        Padding(
                          padding:
                              const EdgeInsets.only(left: Insets.gutter * 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _headerInfoRow(
                                context.l10n.year,
                                vehicleDescription.year.toString(),
                              ),
                              _headerInfoRow(
                                context.l10n.model,
                                '${vehicleDescription.model} '
                                '${vehicleDescription.fuelType} '
                                '${vehicleDescription.trim ?? ''}',
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Row(
                    children: [
                      VehicleAmountOffered(
                        activeQuote: quote,
                        controller: controller,
                      ),
                      _deleteButton(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _indexDisplay(BuildContext context, double height) {
    return Container(
      width: 80,
      height: height,
      color: ElvConstants.elvLightBlue,
      child: Center(
        child: Text(
          (index + 1).toString(),
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }

  GestureDetector _deleteButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        EmrDialog.busy(
          context,
          titleText: context.l10n.pleaseWaitSavingChanges,
        );
        controller.deleteVehicle(quote).then((value) {
          if (context.mounted) {
            Navigator.of(context).pop();
            if (!value) {
              EmrDialog.ok(
                context,
                titleText: context.l10n.failed,
              );
            }
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter / 2),
        child: Center(
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.delete_outline,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _headerInfoRow(
    String title,
    String? body, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    bool selectable = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 4),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Text(
            '$title: ',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          if (selectable)
            SelectableText(
              body ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: EmrColours.secondaryCyan, fontSize: 18),
              onTap: () {
                Clipboard.setData(
                  ClipboardData(
                    text: body ?? '',
                  ),
                );
                EmrModal.showMessageBar(
                  context,
                  context.l10n.copiedToClipboard,
                );
              },
            ),
          if (!selectable)
            Text(
              body ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 18),
            ),
        ],
      ),
    );
  }
}
