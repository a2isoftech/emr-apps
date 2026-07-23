import 'package:emr_one_elv_quotes/format.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/row_or_column.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/vehicle_quote_tile/widgets/cat_type_drop_down.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/vehicle_quote_tile/widgets/vehicle_details_text_input.dart';

class MultipleCatsDialogBody extends StatefulWidget {
  const MultipleCatsDialogBody({
    required this.quote,
    required this.cancel,
    required this.onApply,
    super.key,
  });

  final ActiveQuote quote;
  final VoidCallback cancel;
  final void Function(int? pipeCatCount, int? preCatCount) onApply;

  @override
  State<MultipleCatsDialogBody> createState() => _MultipleCatsDialogBodyState();
}

class _MultipleCatsDialogBodyState extends State<MultipleCatsDialogBody> {
  final numOfAllowedCats = 4;
  final dialogWidth = 600.0;
  final List<Map<CatTypeEnum, double>> currentCats = [];

  late final double pipeCatValue;
  late final double preCatValue;

  int? pipeCats;
  int? preCats;

  @override
  void initState() {
    super.initState();
    // cat values
    pipeCatValue = widget.quote.partPrices
            ?.firstWhereOrNull(
              (partPrice) =>
                  partPrice.description == ElvConstants.pipeCatalyticConverter,
            )
            ?.price ??
        0;
    preCatValue = widget.quote.partPrices
            ?.firstWhereOrNull(
              (partPrice) =>
                  partPrice.description == ElvConstants.preCatalyticConverter,
            )
            ?.price ??
        0;

    // current cat counts
    preCats = widget.quote.vehicleConfiguration.numOfPreCats;
    pipeCats = widget.quote.vehicleConfiguration.numOfPipeCats;

    // Add cats
    _populateCurrentCats();
  }

  @override
  void dispose() {
    currentCats.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: dialogWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              Insets.gutter,
              Insets.gutter,
              Insets.gutter,
              0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: currentCats.length < numOfAllowedCats
                          ? _addCat
                          : null,
                      icon: const Icon(Icons.add_circle_outline),
                    ),
                    IconButton(
                      onPressed: currentCats.isNotEmpty ? _removeCat : null,
                      icon: const Icon(Icons.remove_circle_outline),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: currentCats.length,
              itemBuilder: (context, index) => _catRow(
                currentCats[index],
                index,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              Insets.gutter,
              Insets.gutter,
              Insets.gutter,
              Insets.gutter,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: context.pop,
                  child: Text(context.l10n.cancel),
                ),
                TextButton(
                  onPressed: currentCats.length <= numOfAllowedCats
                      ? () {
                          _updateCatNumbers();
                          widget.onApply(pipeCats, preCats);
                        }
                      : null,
                  child: Text(context.l10n.save),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _catRow(
    Map<CatTypeEnum, double> catItem,
    int index,
  ) {
    return RowOrColumn(
      children: [
        CatTypeDropdown(
          value: catItem.keys.first,
          onChanged: (v) => _updateCatType(v, index),
        ),
        VehicleDetailsTextInput(
          title: context.l10n.catValue,
          value: catItem.keys.first == CatTypeEnum.preCat
              ? Format.moneyFromDouble(preCatValue)
              : catItem.keys.first == CatTypeEnum.pipeCat
                  ? Format.moneyFromDouble(pipeCatValue)
                  : Format.moneyFromDouble(0),
          enabled: false,
        ),
      ],
    );
  }

  void _updateCatNumbers() {
    setState(() {
      // Reset counts before recounting
      preCats = 0;
      pipeCats = 0;

      for (final entry in currentCats) {
        entry.forEach((catType, value) {
          if (catType == CatTypeEnum.preCat) {
            preCats = preCats! + 1;
          }
          if (catType == CatTypeEnum.pipeCat) {
            pipeCats = pipeCats! + 1;
          }
        });
      }
    });
  }

  void _updateCatType(CatTypeEnum? catType, int index) {
    setState(() {
      final currentCat = currentCats[index].keys.first;

      // no change
      if (currentCat == catType) {
        return;
      } else {
        if (catType == CatTypeEnum.pipeCat) {
          currentCats[index] = {CatTypeEnum.pipeCat: pipeCatValue};
        } else if (catType == CatTypeEnum.preCat) {
          currentCats[index] = {CatTypeEnum.preCat: preCatValue};
        }
      }
    });
  }

  void _populateCurrentCats() {
    for (var i = 0; i < (pipeCats ?? 0); i++) {
      currentCats.add({CatTypeEnum.pipeCat: pipeCatValue});
    }

    // Add pre cats
    for (var i = 0; i < (preCats ?? 0); i++) {
      currentCats.add({CatTypeEnum.preCat: preCatValue});
    }

    if (currentCats.isEmpty) {
      currentCats.add({CatTypeEnum.unknown: 0});
    }
  }

  void _addCat() {
    setState(() {
      if (currentCats.length < numOfAllowedCats) {
        currentCats.add({CatTypeEnum.unknown: 0});
      }
    });
  }

  void _removeCat() {
    setState(currentCats.removeLast);
  }
}
