import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/helpers/lot_helpers.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class LotCardStatusIcons extends StatelessWidget {
  const LotCardStatusIcons({
    required this.lot,
    required this.compositionAcronyms,
    super.key,
    this.direction = Axis.vertical,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final Lot lot;
  final Axis direction;
  final MainAxisAlignment mainAxisAlignment;
  final List<LotCompositionAcronym> compositionAcronyms;

  @override
  Widget build(BuildContext context) => switch (direction) {
        Axis.horizontal => _buildHorizontal(context),
        Axis.vertical => _buildVertical(context),
      };

  Widget _buildVertical(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        ..._getLotTypeIcons(context),
        ..._getLotStateIcons(context),
        ..._getLotOuterCasingIcons(context),
        ..._getLotInnerCompositionIcons(context),
      ],
    );
  }

  Widget _buildHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        ..._getLotTypeIcons(context),
        ..._getLotStateIcons(context),
        ..._getLotOuterCasingIcons(context),
        ..._getLotInnerCompositionIcons(context),
      ],
    );
  }

  List<Widget> _getLotTypeIcons(BuildContext context) {
    const cableIcon = Icon(
      Icons.cable,
    );

    const jointIcon = Icon(
      Icons.candlestick_chart,
    );

    const unknownIcon = Icon(
      Icons.help_outline,
    );

    final spacer = switch (direction) {
      Axis.horizontal => const SizedBox(width: 4),
      Axis.vertical => const SizedBox(height: 4),
    };

    return switch (lot.type) {
      LotType.sticks => [
          Tooltip(
            message: 'Type: Sticks/Cable',
            child: Column(
              children: [
                cableIcon,
                Text(
                  'CBL',
                  style: EmrOneConstants.kBannerTextStyle.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
          spacer,
        ],
      LotType.joints => [
          Tooltip(
            message: 'Type: Joints',
            child: Column(
              children: [
                jointIcon,
                Text(
                  'JNT',
                  style: EmrOneConstants.kBannerTextStyle.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
          spacer,
        ],
      LotType.unknown => [
          Tooltip(
            message: 'Type: Unknown',
            child: Column(
              children: [
                unknownIcon,
                Text(
                  'UNK',
                  style: EmrOneConstants.kBannerTextStyle.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
          spacer,
        ]
    };
  }

  List<Widget> _getLotStateIcons(BuildContext context) {
    final t2Icon = Icon(
      Symbols.check_circle,
      color: Theme.of(context).colorScheme.primary,
    );

    final openIcon = Icon(
      Symbols.box,
      color: Theme.of(context).colorScheme.tertiary,
    );

    final spacer = switch (direction) {
      Axis.horizontal => const SizedBox(width: 4),
      Axis.vertical => const SizedBox(height: 4),
    };

    return switch (lot.state) {
      LotState.newLot => [
          Tooltip(
            message: 'Status: New Lot (Open)',
            child: Column(
              children: [
                openIcon,
                Text(
                  'OPN',
                  style: EmrOneConstants.kBannerTextStyle.copyWith(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ],
            ),
          ),
          spacer,
        ],
      LotState.createdInTrade => [
          Tooltip(
            message: 'Status: Created in Trade',
            child: Column(
              children: [
                t2Icon,
                Text(
                  'T2',
                  style: EmrOneConstants.kBannerTextStyle
                      .copyWith(color: Theme.of(context).colorScheme.onSurface),
                ),
              ],
            ),
          ),
          spacer,
        ],
      _ => [],
    };
  }

  List<Widget> _getLotOuterCasingIcons(BuildContext context) {
    final outer =
        lot.extendedProperties[YlConstants.epLotOuterCasing] as String?;

    final outerIcon = Icon(
      Symbols.circle,
      color: Colors.orange[700],
    );

    final spacer = switch (direction) {
      Axis.horizontal => const SizedBox(width: 4),
      Axis.vertical => const SizedBox(height: 4),
    };

    if (outer != null) {
      return [
        Tooltip(
          message: 'Outer: $outer',
          child: Column(
            children: [
              outerIcon,
              Text(
                LotHelpers.getAcronymFromComposition(
                  compositionAcronyms,
                  outer,
                ),
                style: EmrOneConstants.kBannerTextStyle.copyWith(
                  color: Colors.orange[700],
                ),
              ),
            ],
          ),
        ),
        spacer,
      ];
    }

    return [];
  }

  List<Widget> _getLotInnerCompositionIcons(BuildContext context) {
    final inner =
        lot.extendedProperties[YlConstants.epLotInnerComposition] as String?;

    final innerIcon = Icon(
      Symbols.screen_record,
      color: Colors.orange[700],
    );

    final spacer = switch (direction) {
      Axis.horizontal => const SizedBox(width: 4),
      Axis.vertical => const SizedBox(height: 4),
    };

    if (lot.type == LotType.sticks && inner != null) {
      return [
        Tooltip(
          message: 'Inner: $inner',
          child: Column(
            children: [
              innerIcon,
              Text(
                LotHelpers.getAcronymFromComposition(
                  compositionAcronyms,
                  inner,
                ),
                style: EmrOneConstants.kBannerTextStyle.copyWith(
                  color: Colors.orange[700],
                ),
              ),
            ],
          ),
        ),
        spacer,
      ];
    }

    return [];
  }
}
