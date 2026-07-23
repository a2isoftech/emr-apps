import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/controllers/lot_stick_assessment_controller.dart';
import 'package:emr_one_yard_logistics/models/lot_product_composition_map.dart';
import 'package:emr_one_yard_logistics/models/lot_product_inner_map.dart';
import 'package:emr_one_yard_logistics/models/lot_type.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class StickAssessmentPages extends StatefulWidget {
  const StickAssessmentPages({
    required this.controller,
    required this.pageController,
    super.key,
  });

  final LotStickAssessmentController controller;
  final PageController pageController;

  @override
  State<StickAssessmentPages> createState() => _StickAssessmentPagesState();
}

class _StickAssessmentPagesState extends State<StickAssessmentPages>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int _currentPageIndex = 0;
  String? outerCasingGroupValue;
  String? innerCasingGroupValue;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: widget.controller.totalPages.value, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: Insets.gutter * 2),
          child: PageView(
            controller: widget.pageController,
            onPageChanged: _handlePageViewChanged,
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Outer Casing',
                      style: EmrOneConstants.kOpenSans18BoldTextStyle,
                    ),
                    const SizedBox(height: Insets.gutter),
                    RadioGroup<LotProductCompositionMap>(
                      onChanged: (LotProductCompositionMap? value) {
                        if (value == null) return;
                        _setOuter(value);
                      },
                      groupValue:
                          widget.controller.selectedLotProductCompositionMap,
                      child: Column(
                        children: [
                          ...widget.controller.lotProductCompositionMapList.map(
                            (compositionMap) =>
                                RadioListTile<LotProductCompositionMap>(
                              title: Text(compositionMap.outerValue),
                              value: compositionMap,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (widget.controller.selectedLotProductCompositionMap != null &&
                  widget.controller.selectedLotProductCompositionMap!
                      .supportedLotTypes
                      .contains(LotType.sticks) &&
                  widget.controller.selectedLotProductCompositionMap!
                          .innerCompositions.length >
                      1)
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Inner Composition',
                        style: EmrOneConstants.kOpenSans18BoldTextStyle,
                      ),
                      const SizedBox(height: Insets.gutter),
                      RadioGroup<LotProductInnerMap>(
                        onChanged: (LotProductInnerMap? value) {
                          if (value == null) return;
                          _setInner(value);
                        },
                        groupValue: widget.controller.lotProductInnerMap,
                        child: Column(
                          children: [
                            ...widget
                                .controller
                                .selectedLotProductCompositionMap!
                                .innerCompositions
                                .map(
                              (innerCompositions) =>
                                  RadioListTile<LotProductInnerMap>(
                                title: Text(innerCompositions.value),
                                value: innerCompositions,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              if (widget.controller.selectedLotProductCompositionMap != null &&
                  widget.controller.selectedLotProductCompositionMap!
                      .supportedLotTypes
                      .contains(LotType.sticks))
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Circumference',
                        style: EmrOneConstants.kOpenSans18BoldTextStyle,
                      ),
                      const SizedBox(height: Insets.gutter),
                      YlIncrementMeasurement(
                        unitSuffix: 'cm',
                        inputHeading: 'Centimeter (cm)',
                        initialMeasurement:
                            widget.controller.circumference.value,
                        increments: const [0.1, 1, 5, 10],
                        onChanged: (p0) {
                          widget.controller.circumference.value = p0;
                        },
                      ),
                    ],
                  ),
                ),
              if (widget.controller.lotProductInfo.watch(context) != null &&
                  widget.controller.lotProductInfo.value!.requiredPercentages
                      .contains(YlConstants.lotDryCopperPercentage))
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dry Copper Percentage',
                        style: EmrOneConstants.kOpenSans18BoldTextStyle,
                      ),
                      const SizedBox(height: Insets.gutter),
                      YlIncrementMeasurement(
                        initialMeasurement:
                            widget.controller.dryCopperPercentage.value,
                        unitSuffix: '%',
                        increments: const [0.5, 1, 5, 10],
                        inputHeading: 'Percentage %',
                        onChanged: (p0) {
                          widget.controller.dryCopperPercentage.value = p0;
                        },
                      ),
                    ],
                  ),
                ),
              if (widget.controller.lotProductInfo.watch(context) != null &&
                  widget.controller.lotProductInfo.value!.requiredPercentages
                      .contains(YlConstants.lotLeadPercentage))
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lead Percentage',
                        style: EmrOneConstants.kOpenSans18BoldTextStyle,
                      ),
                      const SizedBox(height: Insets.gutter),
                      YlIncrementMeasurement(
                        initialMeasurement:
                            widget.controller.leadPercentage.value,
                        unitSuffix: '%',
                        increments: const [0.5, 1, 5, 10],
                        inputHeading: 'Percentage %',
                        onChanged: (p0) {
                          widget.controller.leadPercentage.value = p0;
                        },
                      ),
                    ],
                  ),
                ),
              if (widget.controller.lotProductInfo.watch(context) != null &&
                  widget.controller.lotProductInfo.value!.requiredPercentages
                      .contains(YlConstants.lotGreasyCopperPercentage))
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Greasy Copper Percentage',
                        style: EmrOneConstants.kOpenSans18BoldTextStyle,
                      ),
                      const SizedBox(height: Insets.gutter),
                      YlIncrementMeasurement(
                        initialMeasurement:
                            widget.controller.greasyCopperPercentage.value,
                        unitSuffix: '%',
                        increments: const [0.5, 1, 5, 10],
                        inputHeading: 'Percentage %',
                        onChanged: (p0) {
                          widget.controller.greasyCopperPercentage.value = p0;
                        },
                      ),
                    ],
                  ),
                ),
              if (widget.controller.lotProductInfo.watch(context) != null &&
                  widget.controller.lotProductInfo.value!.requiredPercentages
                      .contains(YlConstants.lotAluminiumPercentage))
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Aluminium Percentage',
                        style: EmrOneConstants.kOpenSans18BoldTextStyle,
                      ),
                      const SizedBox(height: Insets.gutter),
                      YlIncrementMeasurement(
                        initialMeasurement:
                            widget.controller.aluminiumPercentage.value,
                        unitSuffix: '%',
                        increments: const [0.5, 1, 5, 10],
                        inputHeading: 'Percentage %',
                        onChanged: (p0) {
                          widget.controller.aluminiumPercentage.value = p0;
                        },
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
        YlPageIndicator(
          tabController: _tabController,
          currentPageIndex: _currentPageIndex,
          onUpdateCurrentPageIndex: _updateCurrentPageIndex,
          isOnDesktopAndWeb: true,
        ),
      ],
    );
  }

  void _setOuter(
    LotProductCompositionMap lotProductCompositionMap,
  ) {
    if (lotProductCompositionMap.supportedLotTypes.contains(LotType.joints)) {
      final lotProductMap =
          lotProductCompositionMap.innerCompositions.firstOrNull;
      widget.controller.lotProductInfo.value = lotProductMap?.productInfo;
    } else if (lotProductCompositionMap.supportedLotTypes
            .contains(LotType.sticks) &&
        widget.controller.outerCasing.value != null) {
      // This means outer casing has been updated.
      // In that case we want to reset it back to its original state of 3 pages
      // So that we can again redeterermine the product of material
      // And refresh inner compositions based on the new outer casing.
      widget.controller.resetAssessProperties();

      _tabController = TabController(
        length: widget.controller.totalPages.value,
        vsync: this,
      );
      _tabController.index = _currentPageIndex;
      innerCasingGroupValue = null;
    }
    widget.controller.outerCasing.value = lotProductCompositionMap.outerValue;
    widget.controller.selectedLotProductCompositionMap =
        lotProductCompositionMap;

    setState(() {
      outerCasingGroupValue = lotProductCompositionMap.outerValue;
    });

    // Added this case so that if there is only 1 inner casing then skip
    // that step and move onto next
    if (lotProductCompositionMap.supportedLotTypes.contains(LotType.sticks) &&
        lotProductCompositionMap.innerCompositions.length == 1) {
      final lotProductMap = lotProductCompositionMap.innerCompositions.first;
      _setInner(lotProductMap, skipStep: true);
    }
  }

  void _setInner(
    LotProductInnerMap lotProductInnerMap, {
    bool skipStep = false,
  }) {
    widget.controller.lotProductInnerMap = lotProductInnerMap;
    widget.controller.innerCasing.value = lotProductInnerMap.value;
    widget.controller.lotProductInfo.value = lotProductInnerMap.productInfo;

    // 3 indicates- 1- Outer, 2- Inner, 3- Circumference
    widget.controller.totalPages.value =
        3 + lotProductInnerMap.productInfo.requiredPercentages.length;

    if (skipStep) {
      widget.controller.totalPages.value -= 1;
    }

    // Added this because once we select inner casing, we would know
    // which product it is and how many required steps are needed to
    // capture percentages
    _tabController = TabController(
      length: widget.controller.totalPages.value,
      vsync: this,
    );
    _tabController.index = _currentPageIndex;

    setState(() {
      innerCasingGroupValue = lotProductInnerMap.value;
    });
  }

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    widget.controller.currentPageIndex.value = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    widget.pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}
