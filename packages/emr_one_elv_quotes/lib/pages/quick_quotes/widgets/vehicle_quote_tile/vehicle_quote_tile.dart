import 'package:emr_one_elv_core/widgets/dialog/elv_dialog.dart';
import 'package:emr_one_elv_quotes/common/price_adjustment_dialog.dart';
import 'package:emr_one_elv_quotes/format.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/row_or_column.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/vehicle_quote_tile/widgets/header_row.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/vehicle_quote_tile/widgets/multiple_cats_dialog.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/vehicle_quote_tile/widgets/vehicle_details_drop_down.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/vehicle_quote_tile/widgets/vehicle_details_text_input.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class VehicleQuoteTile extends StatefulWidget {
  const VehicleQuoteTile({
    required this.quote,
    required this.controller,
    required this.index,
    super.key,
  });

  final ActiveQuote quote;
  final QuickQuoteController controller;
  final int index;

  @override
  State<VehicleQuoteTile> createState() => _VehicleQuoteTileState();
}

class _VehicleQuoteTileState extends State<VehicleQuoteTile> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<QuickQuoteController>(context);
    final config = widget.quote.vehicleConfiguration;
    final desc = widget.quote.vehicleDescription;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: Insets.gutter / 2,
        left: Insets.gutter,
        right: Insets.gutter,
      ),
      child: Column(
        children: [
          VehicleQuoteTileHeader(
            context: context,
            controller: controller,
            quote: widget.quote,
            vehicleDescription: desc,
            index: widget.index,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: ElvConstants.elvBlueHighlight,
                width: 3,
              ),
            ),
            child: MediaQuery.of(context).size.width > 1400
                ? Padding(
                    padding: const EdgeInsets.all(Insets.gutter / 2),
                    child: Row(
                      children: [
                        Expanded(
                          child: _vehicleDropDowns(controller, config, desc),
                        ),
                        Expanded(child: _vehicleFields(controller)),
                      ],
                    ),
                  )
                : Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Insets.gutter / 2),
                        child: _vehicleDropDowns(controller, config, desc),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(Insets.gutter / 2),
                        child: _vehicleFields(controller),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  String _priceAdjustmentTotal(
    List<PriceAdjustmentComponent>? priceAdjustment,
  ) {
    if (priceAdjustment == null || priceAdjustment.isEmpty) {
      return Format.money(0.0);
    } else {
      final totalValue = priceAdjustment
          .map((myClass) => myClass.value)
          .reduce((a, b) => a + b);
      return Format.money(double.parse(totalValue.toStringAsFixed(2)));
    }
  }

  String _catValueTotal() {
    final pipeCatValue = _getPartPrice(ElvConstants.pipeCatalyticConverter);
    final preCatValue = _getPartPrice(ElvConstants.preCatalyticConverter);

    final total =
        (widget.quote.vehicleConfiguration.numOfPipeCats * pipeCatValue) +
        (widget.quote.vehicleConfiguration.numOfPreCats * preCatValue);

    return Format.moneyFromDouble(total);
  }

  double _getPartPrice(String description) {
    return widget.quote.partPrices
            ?.firstWhereOrNull((part) => part.description == description)
            ?.price ??
        0.0;
  }

  Widget _vehicleDropDowns(
    QuickQuoteController controller,
    VehicleConfiguration vehicleConfiguration,
    VehicleDetail vehicleDescription,
  ) {
    final steelCount = vehicleConfiguration.steelWheels;
    final alloyCount = vehicleConfiguration.alloyWheels;
    final chromeCount = vehicleConfiguration.chromeWheels;

    final yesNoItems = [
      DropdownMenuItem(
        value: true,
        child: Padding(
          padding: const EdgeInsets.only(left: Insets.gutter / 2),
          child: Text(context.l10n.yes),
        ),
      ),
      DropdownMenuItem(
        value: false,
        child: Padding(
          padding: const EdgeInsets.only(left: Insets.gutter / 2),
          child: Text(context.l10n.no),
        ),
      ),
    ].toList();

    final alloyWheelItems =
        List<int>.generate(
              ElvConstants.maximumWheelOptionCount - steelCount - chromeCount,
              (i) => i,
            )
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter / 2),
                  child: Text('$e'),
                ),
              ),
            )
            .toList();

    final steelWheelItems =
        List<int>.generate(
              ElvConstants.maximumWheelOptionCount - alloyCount - chromeCount,
              (i) => i,
            )
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter / 2),
                  child: Text('$e'),
                ),
              ),
            )
            .toList();

    final chromeWheelItems =
        List<int>.generate(
              ElvConstants.maximumWheelOptionCount - alloyCount - steelCount,
              (i) => i,
            )
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter / 2),
                  child: Text('$e'),
                ),
              ),
            )
            .toList();

    return RowOrColumn(
      children: [
        VehicleDetailsDropDown<int>(
          items: alloyWheelItems,
          value: vehicleConfiguration.alloyWheels,
          onChanged: (value) {
            if ((value ?? 0) +
                        widget.quote.vehicleConfiguration.steelWheels +
                        widget.quote.vehicleConfiguration.chromeWheels <=
                    5 &&
                value != widget.quote.vehicleConfiguration.alloyWheels) {
              widget.controller.updateVehicle(
                vehicle: widget.quote,
                alloyWheels: value,
              );
            }
          },
          title: context.l10n.alloys,
        ),
        VehicleDetailsDropDown<int>(
          items: steelWheelItems,
          value: vehicleConfiguration.steelWheels,
          onChanged: (value) {
            if ((value ?? 0) +
                        widget.quote.vehicleConfiguration.alloyWheels +
                        widget.quote.vehicleConfiguration.chromeWheels <=
                    5 &&
                value != widget.quote.vehicleConfiguration.steelWheels) {
              widget.controller.updateVehicle(
                vehicle: widget.quote,
                steelWheels: value,
              );
            }
          },
          title: context.l10n.steels,
        ),
        if (controller.activeTerritory.canShowChrome(
          ukAllowChromeWheels: controller.model.ukAllowChromeWheels,
          usaAllowChromeWheels: controller.model.usaAllowChromeWheels,
        ))
          VehicleDetailsDropDown<int>(
            items: chromeWheelItems,
            value: vehicleConfiguration.chromeWheels,
            onChanged: (value) {
              if ((value ?? 0) +
                          widget.quote.vehicleConfiguration.alloyWheels +
                          widget.quote.vehicleConfiguration.steelWheels <=
                      5 &&
                  value != widget.quote.vehicleConfiguration.chromeWheels) {
                widget.controller.updateVehicle(
                  vehicle: widget.quote,
                  chromeWheels: value,
                );
              }
            },
            title: context.l10n.chromes,
          ),
        VehicleDetailsDropDown<bool>(
          items: yesNoItems,
          value: vehicleConfiguration.hasBattery ?? false,
          onChanged: (value) {
            if (value != null &&
                value != widget.quote.vehicleConfiguration.hasBattery) {
              widget.controller.updateVehicle(
                vehicle: widget.quote,
                hasBattery: value,
              );
            }
          },
          title: context.l10n.battery,
        ),
        if (!controller.activeTerritory.displayMultipleCats(
          ukDisplayMultipleCats: widget.controller.model.ukDisplayMultipleCats,
          usaDisplayMultipleCats:
              widget.controller.model.usaDisplayMultipleCats,
        ))
          VehicleDetailsDropDown<bool>(
            items: yesNoItems,
            value: vehicleConfiguration.hasOriginalCat ?? false,
            //Disable for hybrid or electric car
            onChanged: (value) {
              if (value != null &&
                  value != widget.quote.vehicleConfiguration.hasOriginalCat) {
                widget.controller.updateVehicle(
                  vehicle: widget.quote,
                  hasCat: value,
                );
              }
            },
            title: context.l10n.originalCat,
          ),
      ],
    );
  }

  Widget _vehicleFields(QuickQuoteController controller) {
    final displayMultipleCats = controller.activeTerritory.displayMultipleCats(
      ukDisplayMultipleCats: widget.controller.model.ukDisplayMultipleCats,
      usaDisplayMultipleCats: widget.controller.model.usaDisplayMultipleCats,
    );
    return RowOrColumn(
      children: [
        VehicleDetailsTextInput(
          title: context.l10n.kerbWeight,
          onChanged: (v) =>
              controller.modifyKerbWeight(v ?? '', quoteId: widget.quote.id),
          value: (widget.quote.vehicleDescription.curbWeight ?? 0).toString(),
          suffix: Format.weightSuffix,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly],
          enabled: controller.model.vehiclesIDsWithNoCurbWeight.contains(
            widget.quote.vehicleDescription.id,
          ),
        ),
        if (!displayMultipleCats)
          VehicleDetailsTextInput(
            title: context.l10n.catValue,
            value: Format.money(widget.quote.catValue ?? 0.0),
            enabled: false,
          ),
        if (displayMultipleCats)
          VehicleDetailsTextInput(
            title: '${context.l10n.catValue} (${context.l10n.clickToEdit})',
            value: _catValueTotal(),
            onTap: () {
              ElvDialog.action(
                context,
                titleText: context.l10n.catDetails,
                content: MultipleCatsDialogBody(
                  quote: widget.quote,
                  cancel: () => Navigator.of(context).pop(),
                  onApply: (pipeCatCount, preCatCount) {
                    Navigator.of(context).pop();
                    controller.updateVehicle(
                      vehicle: widget.quote,
                      hasCat: (pipeCatCount ?? 0) + (preCatCount ?? 0) > 0,
                      numOfPipeCats: pipeCatCount,
                      numOfPreCats: preCatCount,
                    );
                  },
                ),
              );
            },
            enabled: false,
          ),
        VehicleDetailsTextInput(
          title:
              '${context.l10n.priceAdjustment} (${context.l10n.clickToEdit})',
          value: _priceAdjustmentTotal(
            widget.quote.vehicleConfiguration.priceAdjustment,
          ),
          onTap: controller.baseState.batchQuote?.leadSourceId != null
              ? null
              : () {
                  ElvDialog.action(
                    context,
                    titleText: context.l10n.priceAdjustment,
                    content: PriceAdjustmentDialogBody(
                      reasonAlwaysRequired: controller.activeTerritory
                          .priceAdjustmentReasonRequired(),
                      hidePriceAdjustment:
                          controller.activeTerritory == ElvTerritory.uk,
                      vehicle: widget.quote.vehicleConfiguration,
                      cancel: () => Navigator.of(context).pop(),
                      onApply: (value) {
                        Navigator.of(context).pop();
                        controller.updateVehicle(
                          vehicle: widget.quote,
                          priceAdjustments: value,
                        );
                      },
                    ),
                  );
                },
          enabled: false,
        ),
      ],
    );
  }
}
