import 'package:collection/collection.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/extensions/small_screen_check.dart';
import 'package:emr_one_elv_core/models/quote_models/active_quote.dart';
import 'package:emr_one_elv_core/models/quote_type_enum.dart';
import 'package:emr_one_elv_quotes/format.dart';
import 'package:emr_one_elv_quotes/models/models.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AmountOffered extends StatefulWidget {
  const AmountOffered({
    required this.batchQuote,
    this.priceLoading = false,
    this.deliveredQuotes,
    this.collectedQuotes,
    this.onTap,
    super.key,
  });

  final BatchQuoteModel batchQuote;
  final List<BatchQuoteModel>? deliveredQuotes;
  final List<BatchQuoteModel>? collectedQuotes;
  final void Function(int batchQuoteId)? onTap;
  final bool priceLoading;

  @override
  State<AmountOffered> createState() => _AmountOfferedState();
}

class _AmountOfferedState extends State<AmountOffered> {
  final tooltipController = OverlayPortalController();
  final link = LayerLink();
  late double buttonWidth;

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: link,
      child: OverlayPortal(
        controller: tooltipController,
        overlayChildBuilder: (BuildContext context) {
          return CompositedTransformFollower(
            link: link,
            targetAnchor: Alignment.bottomLeft,
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: AmountOfferedMenu(
                width: buttonWidth,
                selectedBatchQuoteId: widget.batchQuote.id,
                deliveredBatchQuotes: widget.deliveredQuotes,
                collectedBatchQuotes: widget.collectedQuotes,
                onTap: (int i) {
                  widget.onTap!(i);
                  tooltipController.toggle();
                },
              ),
            ),
          );
        },
        child: GestureDetector(
          onTap: _showDropDown()
              ? () {
                  buttonWidth = context.size?.width ?? 300;
                  tooltipController.toggle();
                }
              : null,
          child: AmountOfferedButton(
            batchQuote: widget.batchQuote,
            showDropDownMenu: _showDropDown(),
          ),
        ),
      ),
    );
  }

  bool _showDropDown() {
    return (widget.collectedQuotes != null &&
            widget.collectedQuotes!.isNotEmpty) ||
        (widget.deliveredQuotes != null && widget.deliveredQuotes!.length > 1);
  }
}

class AmountOfferedButton extends StatefulWidget {
  const AmountOfferedButton({
    required this.batchQuote,
    required this.showDropDownMenu,
    super.key,
  });

  final bool showDropDownMenu;
  final BatchQuoteModel batchQuote;

  @override
  State<AmountOfferedButton> createState() => _AmountOfferedButtonState();
}

class _AmountOfferedButtonState extends State<AmountOfferedButton> {
  @override
  Widget build(BuildContext context) {
    final isSmallScreen = SmallScreenCheck().isSmallScreen(context);
    final total = _total();
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: EmrColours.primaryGreen,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Insets.gutter / 4,
          horizontal: Insets.gutter,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${_offerType(widget.batchQuote.acquisition, context)} '
              '${context.l10n.offer.toUpperCase()} '
              '${_vehicleCount(isSmallScreen, widget.batchQuote.quotes)}:',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
              child: Container(
                width: 2,
                height: 20,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            Text(
              Format.money(total),
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 24,
                  ),
            ),
            if (widget.showDropDownMenu)
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter / 2),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
          ],
        ),
      ),
    );
  }

  String _offerType(
    QuoteTypeEnum? type,
    BuildContext context,
  ) {
    if (type == null) return context.l10n.delivered.toUpperCase();
    return type == QuoteTypeEnum.delivered
        ? context.l10n.delivered.toUpperCase()
        : context.l10n.collected.toUpperCase();
  }

  String _vehicleCount(bool isSmallScreen, List<ActiveQuote> quotes) {
    if (isSmallScreen) {
      return '';
    } else {
      return quotes.length > 1 ? 'FOR ${quotes.length} VEHICLES' : '';
    }
  }

  double _total() {
    if (widget.batchQuote.quotes.isNotEmpty) {
      return widget.batchQuote.quotes
          .map((e) => e.total)
          .fold<double>(0, (pV, element) => pV + element);
    }
    return 0;
  }
}

class AmountOfferedMenu extends StatefulWidget {
  const AmountOfferedMenu({
    required this.width,
    super.key,
    this.selectedBatchQuoteId,
    this.deliveredBatchQuotes,
    this.collectedBatchQuotes,
    this.onTap,
  });

  final int? selectedBatchQuoteId;
  final List<BatchQuoteModel?>? deliveredBatchQuotes;
  final List<BatchQuoteModel?>? collectedBatchQuotes;
  final double width;
  final void Function(int batchQuoteId)? onTap;

  @override
  State<AmountOfferedMenu> createState() => _AmountOfferedMenuState();
}

class _AmountOfferedMenuState extends State<AmountOfferedMenu> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<QuickQuoteController>(context);
    final deliveredQuoteTiles = widget.deliveredBatchQuotes != null &&
            widget.deliveredBatchQuotes!.isNotEmpty
        ? _quotesTiles(
            widget.selectedBatchQuoteId ?? 0,
            widget.deliveredBatchQuotes,
            context,
            controller,
            widget.onTap!,
          )
        : null;
    final collectedQuoteTiles = widget.collectedBatchQuotes != null &&
            widget.collectedBatchQuotes!.isNotEmpty
        ? _quotesTiles(
            widget.selectedBatchQuoteId ?? 0,
            widget.collectedBatchQuotes,
            context,
            controller,
            widget.onTap!,
          )
        : null;

    return Container(
      width: widget.width,
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1.5,
            color: EmrColours.primaryGreen,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(Insets.gutter / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (deliveredQuoteTiles != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${context.l10n.delivered} ${context.l10n.offer}s',
                        style: EmrOneConstants.kTinyHeadingTextStyle,
                      ),
                      ...deliveredQuoteTiles,
                    ],
                  ),
                if (collectedQuoteTiles != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${context.l10n.collected} ${context.l10n.offer}s',
                        style: EmrOneConstants.kTinyHeadingTextStyle,
                      ),
                      ...collectedQuoteTiles,
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _quotesTiles(
    int selectedBatchQuoteId,
    List<BatchQuoteModel?>? quotes,
    BuildContext context,
    QuickQuoteController controller,
    void Function(int batchQuoteId) onTap,
  ) {
    if (quotes == null ||
        quotes.isEmpty ||
        quotes.any((element) => element == null)) {
      return [const SizedBox()];
    } else {
      return quotes.map((quote) {
        final distanceData = controller.model.yardDistanceList
            .firstWhereOrNull((x) => x.yardCode == quote?.yardCode);

        final yardName = quote!.yard?.shortName;
        return GestureDetector(
          onTap: () => onTap(quote.id),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: selectedBatchQuoteId == quote.id,
                          onChanged: null,
                        ),
                        SizedBox(
                          width: 200,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: quote.acquisition ==
                                          QuoteTypeEnum.collected
                                      ? '''${quote.yard?.yardCode.toUpperCase()} - '''
                                          '${context.l10n.emrCollection}'
                                      : '''${quote.yard?.yardCode.toUpperCase()} - '''
                                          '$yardName',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(Format.money(_total(quote))),
                      ],
                    ),
                    if (quote.acquisition == QuoteTypeEnum.delivered) ...{
                      if (controller.model.loadingDistance) ...{
                        Padding(
                          padding:
                              const EdgeInsets.only(left: Insets.gutter * .75),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('${context.l10n.loading}...'),
                          ),
                        ),
                      } else if (distanceData != null) ...{
                        Padding(
                          padding:
                              const EdgeInsets.only(left: Insets.gutter * .75),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              Format.distance(
                                distanceData.drivingDistanceInMiles,
                                DistanceEnum.miles,
                              ),
                            ),
                          ),
                        ),
                      },
                    },
                  ],
                ),
              ),
              if (quote.id != (quotes.last?.id ?? false)) const Divider(),
            ],
          ),
        );
      }).toList();
    }
  }

  double _total(BatchQuoteModel? batchQuote) {
    if (batchQuote == null) return 0;
    return batchQuote.quotes.fold<double>(
      0,
      (previousValue, element) => previousValue + element.total,
    );
  }
}
