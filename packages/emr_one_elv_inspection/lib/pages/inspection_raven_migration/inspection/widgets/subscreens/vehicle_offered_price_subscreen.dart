import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/functions/currency_symbol.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VehicleOfferedPriceSubScreen extends StatelessWidget {
  const VehicleOfferedPriceSubScreen({
    required this.offeredPrice,
    required this.totalCatPrice,
    required this.deviceType,
    super.key,
  });

  final double offeredPrice;
  final double totalCatPrice;
  final DeviceTypeEnum deviceType;

  @override
  Widget build(BuildContext context) {
    return deviceType == DeviceTypeEnum.mobile
        ? _mobileScreenUi(context)
        : _desktopScreenUi(context);
  }

  Widget _desktopScreenUi(BuildContext context) {
    final quoteValue = offeredPrice - totalCatPrice;
    return SizedBox(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${context.l10n.quoteValue}: ',
                      style: Theme.of(context).primaryTextTheme.bodySmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          '${getCurrencySymbol(TerritoryCodes.uk)}'
                          '''${NumberFormat('00.00').format(quoteValue)}''',
                      style: Theme.of(context).primaryTextTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${context.l10n.catPrice}: ',
                      style: Theme.of(context).primaryTextTheme.bodySmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          '${getCurrencySymbol(TerritoryCodes.uk)}'
                          '${NumberFormat('00.00').format(totalCatPrice)}',
                      style: Theme.of(context).primaryTextTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: Insets.gutter * 4,
            child: VerticalDivider(
              thickness: 1,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
          const SizedBox(width: Insets.gutter / 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${context.l10n.offeredPrice.toUpperCase()}: ',
                style: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: Insets.gutter / 4),
              Row(
                children: [
                  Text(
                    getCurrencySymbol(TerritoryCodes.uk),
                    style: Theme.of(context).primaryTextTheme.headlineSmall,
                  ),
                  const SizedBox(width: Insets.gutter / 3),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onSecondary,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(Insets.gutter / 4),
                          ),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Insets.gutter / 2,
                          ),
                          child: Text(
                            softWrap: false,
                            NumberFormat('00.00').format(offeredPrice),
                            style: Theme.of(context).textTheme.headlineSmall!
                                .copyWith(color: Theme.of(context).shadowColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: Insets.gutter / 4),
        ],
      ),
    );
  }

  Widget _mobileScreenUi(BuildContext context) {
    final formattedQuoteValue = NumberFormat(
      '00.00',
    ).format(offeredPrice - totalCatPrice);
    final formattedTotalCatPrice = NumberFormat('00.00').format(totalCatPrice);
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.offeredPrice.toUpperCase(),
              style: Theme.of(context).primaryTextTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: Insets.gutter / 4),
            Row(
              children: [
                Text(
                  getCurrencySymbol(TerritoryCodes.uk),
                  style: Theme.of(context).primaryTextTheme.titleSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: Insets.gutter / 3),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onSecondary,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(Insets.gutter / 4),
                        ),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Insets.gutter / 2,
                        ),
                        child: Text(
                          softWrap: false,
                          NumberFormat('00.00').format(offeredPrice),
                          style: Theme.of(context).textTheme.titleSmall!
                              .copyWith(
                                color: Theme.of(context).shadowColor,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: Insets.gutter / 3),

                MenuAnchor(
                  builder:
                      (
                        BuildContext context,
                        MenuController menuController,
                        Widget? child,
                      ) {
                        return GestureDetector(
                          onTap: () {
                            if (menuController.isOpen) {
                              menuController.close();
                            } else {
                              menuController.open();
                            }
                          },
                          child: Icon(
                            Icons.info_outline,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        );
                      },
                  style: const MenuStyle(
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.all(Insets.gutter / 2),
                    ),
                  ),
                  menuChildren: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${context.l10n.quoteValue}: ',
                            style: Theme.of(context).textTheme.bodySmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                '${getCurrencySymbol(TerritoryCodes.uk)}'
                                '''$formattedQuoteValue''',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: Insets.gutter / 2),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${context.l10n.catPrice}: ',
                            style: Theme.of(context).textTheme.bodySmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                '${getCurrencySymbol(TerritoryCodes.uk)}'
                                '$formattedTotalCatPrice',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
