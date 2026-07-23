import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/widgets/emr_expansion_tile.dart';
import 'package:emr_one_crm/models/arising_point.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_summaryscreen/leftaligntext.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class CWSummaryGrades extends StatefulWidget {
  const CWSummaryGrades({
    required this.controller,
    required this.model,
    required this.isDark,
    super.key,
  });

  final ContractController controller;
  final PartyNewContractViewModel model;
  final bool isDark;

  @override
  State<CWSummaryGrades> createState() => _CWSummaryGradesState();
}

class _CWSummaryGradesState extends State<CWSummaryGrades> {
  int pageSize = 5;

  @override
  Widget build(BuildContext context) {
    final filteredPricingList = widget.model.pricingList.where((p) {
      final gradeCode = p.grade.gradeCode.trim();
      final brokerRef = (p.grade.brokerReference ?? '').trim();

      return widget.model.selectedGrades.any((sel) {
        final selTrim = sel.trim();
        if (selTrim == gradeCode) return true;
        if (selTrim.startsWith('${gradeCode}_')) {
          final selBroker = selTrim.substring(gradeCode.length + 1).trim();
          return selBroker == brokerRef;
        }
        return false;
      });
    }).toList();

    filteredPricingList.sort((a, b) {
      final codeCompare = a.grade.gradeCode.compareTo(b.grade.gradeCode);
      return codeCompare != 0
          ? codeCompare
          : a.grade.description.compareTo(b.grade.description);
    });

    return Column(
      children: [
        for (final pricing in filteredPricingList) ...[
          Padding(
            padding: const EdgeInsets.only(
              bottom: Insets.gutter / 2,
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.outlineVariant,
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(6)),
              ),
              child: EmrExpansionTile(
                backgroundColor: Colors.transparent,
                initiallyExpanded: true,
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: (pricing.grade.brokerReference ?? '')
                                .trim()
                                .isNotEmpty
                            ? pricing.grade.brokerReference!.trim()
                            : widget.controller
                                .getGradeDescription(pricing.grade.gradeCode),
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: widget.isDark
                                      ? Theme.of(context).colorScheme.onPrimary
                                      : Theme.of(context).colorScheme.onSurface,
                                ),
                      ),
                      const TextSpan(text: '\n'),
                      TextSpan(
                        text: pricing.grade.gradeCode,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: widget.isDark
                                      ? Theme.of(context).colorScheme.onPrimary
                                      : Theme.of(context).colorScheme.onSurface,
                                ),
                      ),
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                child: getRows(pricing),
              ),
            ),
          ),
        ],
        const SizedBox(
          height: Insets.gutter / 2,
        ),
      ],
    );
  }

  ValueListenableBuilder<int> getRows(PricingList pricing) {
    final currentPage = ValueNotifier<int>(1);

    return ValueListenableBuilder(
      valueListenable: currentPage,
      builder: (context, value, child) {
        final rows = [pricing];

        return Column(
          children: [
            for (int i = getStartIndex(currentPage.value);
                i < getMaxRange(currentPage.value, rows.length);
                i++) ...[
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(),
                    bottom: BorderSide(),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LeftAlignText(
                      textValue: _getArisingPointDisplayNames(
                        rows[i].arisingPoints,
                        context,
                      ),
                    ),
                    LeftAlignText(
                      textValue: _getDepotDisplayNames(
                        rows[i].depots,
                        context,
                      ),
                    ),
                    LeftAlignText(
                      textValue:
                          '${rows[i].deliveredPrice.value} / ${rows[i].deliveredPrice.uom.uomCode}',
                    ),
                    LeftAlignText(
                      textValue:
                          '${rows[i].collectedPrice.value} / ${rows[i].collectedPrice.uom.uomCode}',
                    ),
                  ],
                ),
              ),
            ],
            if (rows.length > pageSize)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: Insets.gutter),
                    child: Text(
                      '${getRangeValuesText(
                        currentPage.value,
                        rows.length,
                      )} of ${rows.length}',
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: Insets.gutter),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            child: IconButton(
                              icon: const Icon(
                                Icons.skip_previous_outlined,
                              ),
                              onPressed: currentPage.value != 1
                                  ? () => currentPage.value = 1
                                  : null,
                            ),
                          ),
                          WidgetSpan(
                            child: IconButton(
                              icon: const Icon(
                                Icons.keyboard_arrow_left_outlined,
                              ),
                              onPressed: currentPage.value != 1
                                  ? () => currentPage.value--
                                  : null,
                            ),
                          ),
                          WidgetSpan(
                            child: IconButton(
                              icon: const Icon(
                                Icons.keyboard_arrow_right_outlined,
                              ),
                              onPressed:
                                  currentPage.value != getPageCount(rows.length)
                                      ? () => currentPage.value++
                                      : null,
                            ),
                          ),
                          WidgetSpan(
                            child: IconButton(
                              icon: const Icon(
                                Icons.skip_next_outlined,
                              ),
                              onPressed:
                                  currentPage.value != getPageCount(rows.length)
                                      ? () => currentPage.value =
                                          getPageCount(rows.length)
                                      : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          ],
        );
      },
    );
  }

  String _getArisingPointDisplayNames(
    List<ArisingPoint>? arisingPoints,
    BuildContext context,
  ) {
    if ((arisingPoints?.length ?? 0) > 1) {
      return context.l10n.psnopMulti;
    } else if (arisingPoints?.length == 1) {
      return arisingPoints?.first.aliasCode ?? '';
    }
    return '';
  }

  String _getDepotDisplayNames(
    List<Depot>? depots,
    BuildContext context,
  ) {
    if ((depots?.length ?? 0) > 1) {
      return context.l10n.psnopMulti;
    } else if (depots?.length == 1) {
      return depots?.first.code ?? '';
    }
    return '';
  }

  int getPageCount(int gradesCount) {
    if (gradesCount < pageSize) {
      return 1;
    } else if (gradesCount % pageSize == 0) {
      return gradesCount ~/ pageSize;
    } else {
      return gradesCount ~/ pageSize + 1;
    }
  }

  int getStartIndex(int currentPage) {
    return currentPage == 1 ? 0 : (currentPage * pageSize) - pageSize;
  }

  int getMaxRange(int currentPage, int totalGrades) {
    final maxRange = currentPage * pageSize;
    return maxRange > totalGrades ? totalGrades : maxRange;
  }

  String getRangeValuesText(int currentPage, int totalGrades) {
    var to = currentPage * pageSize;
    final from = to - (pageSize - 1);
    if (to > totalGrades) {
      to = totalGrades;
    }
    return '$from-$to';
  }
}
