import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:signals/signals.dart';

class LotStickAssessmentController {
  LotStickAssessmentController(this.lot, this.lotProductCompositionMapList) {
    outerCasing = signal<String?>(
      lot.extendedProperties[YlConstants.epLotOuterCasing] as String?,
    );
    innerCasing = signal<String?>(
      lot.extendedProperties[YlConstants.epLotInnerComposition] as String?,
    );
    circumference = signal<double?>(
      double.tryParse(
        lot.extendedProperties[YlConstants.epLotCircumference].toString(),
      ),
    );
    dryCopperPercentage = signal<double?>(
      double.tryParse(
        lot.extendedProperties[YlConstants.epLotDryCopperPercentage].toString(),
      ),
    );
    leadPercentage = signal<double?>(
      double.tryParse(
        lot.extendedProperties[YlConstants.epLotLeadPercentage].toString(),
      ),
    );
    greasyCopperPercentage = signal<double?>(
      double.tryParse(
        lot.extendedProperties[YlConstants.epLotGreasyCopperPercentage]
            .toString(),
      ),
    );
    aluminiumPercentage = signal<double?>(
      double.tryParse(
        lot.extendedProperties[YlConstants.epLotAluminiumPercentage].toString(),
      ),
    );

    lotProductInfo = signal<LotProductInfo?>(null);

    switch (lot.type) {
      case LotType.joints:
        _setPropertiesForJoints();
      case LotType.sticks:
        _setPropertiesForStickLot();
      case LotType.unknown:
        totalPages.value = 0;
    }

    propertiesComplete = computed<bool>(() {
      return outerCasing.value != null &&
          switch (lot.type) {
            LotType.sticks => innerCasing.value != null &&
                (circumference.value != null && circumference.value! > 0) &&
                _assessPercentageValues(),
            LotType.joints => true,
            LotType.unknown => false,
          };
    });

    // The assessment is complete once there are values for all properties,
    // unless the lot has no extended properties yet, in which case it is
    // complete once the user has reached the last page.
    isComplete = computed<bool>(() {
      return propertiesComplete() &&
          currentPageIndex.value + 1 == totalPages.value;
    });
  }

  Signal<int> currentPageIndex = signal<int>(0);
  Signal<int> totalPages = signal<int>(3);

  late Signal<String?> outerCasing;
  late Signal<String?> innerCasing;
  late Signal<double?> circumference;
  late Signal<double?> dryCopperPercentage;
  late Signal<double?> leadPercentage;
  late Signal<double?> greasyCopperPercentage;
  late Signal<double?> aluminiumPercentage;
  late Signal<LotProductInfo?> lotProductInfo;

  late Computed<bool> isComplete;
  late Computed<bool> propertiesComplete;

  final Lot lot;
  final List<LotProductCompositionMap> lotProductCompositionMapList;
  LotProductCompositionMap? selectedLotProductCompositionMap;
  LotProductInnerMap? lotProductInnerMap;

  bool showWarningForPercentages = false;

  void _setPropertiesForJoints() {
    totalPages.value = 1;

    if (outerCasing.value != null) {
      selectedLotProductCompositionMap = lotProductCompositionMapList
          .firstWhere((x) => x.outerValue == outerCasing.value);

      if (selectedLotProductCompositionMap != null) {
        lotProductInnerMap =
            selectedLotProductCompositionMap!.innerCompositions.first;

        if (lotProductInnerMap != null) {
          lotProductInfo = signal<LotProductInfo?>(
            lotProductInnerMap!.productInfo,
          );
        }
      }
    }
  }

  void _setPropertiesForStickLot() {
    if (lot.extendedProperties.isNotEmpty) {
      // It also has diameter property, that's why -1
      totalPages.value = lot.extendedProperties.length - 1;
    }
    if (outerCasing.value != null && innerCasing.value != null) {
      selectedLotProductCompositionMap = lotProductCompositionMapList
          .firstWhere((x) => x.outerValue == outerCasing.value);

      if (selectedLotProductCompositionMap != null) {
        lotProductInnerMap = selectedLotProductCompositionMap!.innerCompositions
            .firstWhere((y) => y.value == innerCasing.value);

        if (lotProductInnerMap != null) {
          lotProductInfo = signal<LotProductInfo?>(
            lotProductInnerMap!.productInfo,
          );
        }

        // Added this because we want to skip step to choose Inner Composition
        // When we got only 1 Inner Composition
        if (selectedLotProductCompositionMap!.innerCompositions.length == 1) {
          totalPages.value -= 1;
        }
      }
    }
  }

  bool _assessPercentageValues() {
    var hasFilledRequiredPercentages = false;
    var restrictFromSaving = false;
    double totalPercentage = 0;

    if (lotProductInfo.value != null) {
      for (final percentage in lotProductInfo.value!.requiredPercentages) {
        switch (percentage) {
          case YlConstants.lotDryCopperPercentage:
            (hasFilledRequiredPercentages, totalPercentage) =
                _validateAndAddToTotal(
              dryCopperPercentage.value,
              totalPercentage,
            );
            if (!hasFilledRequiredPercentages) {
              return false;
            }

          case YlConstants.lotLeadPercentage:
            (hasFilledRequiredPercentages, totalPercentage) =
                _validateAndAddToTotal(leadPercentage.value, totalPercentage);
            if (!hasFilledRequiredPercentages) {
              return false;
            }

          case YlConstants.lotGreasyCopperPercentage:
            (hasFilledRequiredPercentages, totalPercentage) =
                _validateAndAddToTotal(
              greasyCopperPercentage.value,
              totalPercentage,
            );
            if (!hasFilledRequiredPercentages) {
              return false;
            }

          case YlConstants.lotAluminiumPercentage:
            (hasFilledRequiredPercentages, totalPercentage) =
                _validateAndAddToTotal(
              aluminiumPercentage.value,
              totalPercentage,
            );
            if (!hasFilledRequiredPercentages) {
              return false;
            }
        }
      }
    }

    showWarningForPercentages = totalPercentage >= 95 && totalPercentage < 100;
    restrictFromSaving = totalPercentage >= 100;

    return hasFilledRequiredPercentages && restrictFromSaving == false;
  }

  (bool, double) _validateAndAddToTotal(double? value, double totalPercentage) {
    if (value != null && value > 0) {
      return (true, value + totalPercentage);
    }
    return (false, totalPercentage);
  }

  void resetAssessProperties() {
    // Doing this in case user updates the Outer Section
    dryCopperPercentage.value = null;
    leadPercentage.value = null;
    greasyCopperPercentage.value = null;
    aluminiumPercentage.value = null;
    lotProductInfo.value = null;
    totalPages.value = 3;
  }
}
