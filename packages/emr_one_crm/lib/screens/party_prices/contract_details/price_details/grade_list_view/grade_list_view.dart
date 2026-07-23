import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/contract_line_grade.dart';
import 'package:emr_one_crm/models/grade_line.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/grade_list_view/collected_tag_info_icon.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/read_only_tag_icon.dart';
import 'package:emr_one_crm/shared/tag_utils.dart';
import 'package:emr_one_crm/temp/grade_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GradeListView extends StatelessWidget {
  const GradeListView({
    required this.showDeliveredPrices,
    required this.showCollectedPrices,
    required this.isGpl,
    super.key,
  });
  final bool showDeliveredPrices;
  final bool showCollectedPrices;
  final bool isGpl;
  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<GradesListProvider>(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          margin: const EdgeInsets.only(top: Insets.gutter / 4),
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.outline),
          ),
          width: constraints.maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DataTable(
                showBottomBorder: true,
                columns: [
                  DataColumn(
                    label: Text(
                      isGpl ? context.l10n.tags : context.l10n.grade,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  if (showDeliveredPrices && !isGpl)
                    DataColumn(
                      label: Text(
                        context.l10n.delPrice,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  if (showCollectedPrices && !isGpl)
                    DataColumn(
                      label: Text(
                        context.l10n.colPrice,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  if (isGpl)
                    DataColumn(
                      label: Text(
                        context.l10n.product,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  if (isGpl)
                    DataColumn(
                      label: Text(
                        context.l10n.yard,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  if (isGpl)
                    DataColumn(
                      label: Text(
                        context.l10n.currentPrice,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  if (isGpl)
                    DataColumn(
                      label: Text(
                        context.l10n.deliveryMethod,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                ],
                rows: notifier.paginatedItems.map((item) {
                  if (isGpl) {
                    final row = item as ContractLineGrade;

                    final deliveryType =
                        deliveryTypeFromTags(row.tags, context);
                    final collectedTagRows = (row.tags ?? [])
                        .where((tag) => tag.isCollected ?? false)
                        .map((tag) {
                      final location =
                          (tag.accountLocationKeys?.isNotEmpty ?? false)
                              ? tag.accountLocationKeys!.first
                              : '-';

                      final collectedPrice =
                          row.resultantPrice.value.toString();

                      final haulageCharge = (tag.showToCustomer ?? false)
                          ? '${tag.rate?.value.toStringAsFixed(2)} / MT'
                          : '-';

                      return CollectedInfoRow(
                        location: location,
                        collectedPrice: collectedPrice,
                        haulageCharge: haulageCharge,
                      );
                    }).toList();

                    return DataRow(
                      cells: [
                        DataCell(_buildTagIcon(row.tags)),
                        DataCell(Text(row.grade)),
                        DataCell(Text(row.yard)),
                        DataCell(
                          Row(
                            children: [
                              if (tagsHaveCollected(row.tags))
                                CollectedTagInfoIcon(rows: collectedTagRows),
                              Text(row.formattedCurrentPrice),
                            ],
                          ),
                        ),
                        DataCell(Text(deliveryType)),
                      ],
                    );
                  } else {
                    final grade = item as GradeLine;
                    return DataRow(
                      cells: [
                        DataCell(Text(grade.grade)),
                        if (showDeliveredPrices)
                          DataCell(Text(grade.formattedDelPrice)),
                        if (showCollectedPrices)
                          DataCell(Text(grade.formattedColPrice)),
                      ],
                    );
                  }
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: Insets.gutter),
                    child: Text(
                      '${notifier.getRangeValuesText()}'
                      ' of ${notifier.totalRows}',
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
                              disabledColor: Theme.of(context).disabledColor,
                              icon: const Icon(
                                Icons.skip_previous_outlined,
                              ),
                              onPressed: notifier.previousDisabled
                                  ? null
                                  : notifier.firstPage,
                            ),
                          ),
                          WidgetSpan(
                            child: IconButton(
                              disabledColor: Theme.of(context).disabledColor,
                              icon: const Icon(
                                Icons.keyboard_arrow_left_outlined,
                              ),
                              onPressed: notifier.previousDisabled
                                  ? null
                                  : notifier.previousPage,
                            ),
                          ),
                          WidgetSpan(
                            child: IconButton(
                              disabledColor: Theme.of(context).disabledColor,
                              icon: const Icon(
                                Icons.keyboard_arrow_right_outlined,
                              ),
                              onPressed: notifier.nextDisabled
                                  ? null
                                  : notifier.nextPage,
                            ),
                          ),
                          WidgetSpan(
                            child: IconButton(
                              disabledColor: Theme.of(context).disabledColor,
                              icon: const Icon(
                                Icons.skip_next_outlined,
                              ),
                              onPressed: notifier.nextDisabled
                                  ? null
                                  : notifier.lastPage,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTagIcon(List<Tag>? tags) {
    if (tags == null ||
        tags.isEmpty ||
        !tags.any((tag) => !(tag.isCollected ?? false))) {
      return const SizedBox();
    }
    return ReadOnlyTagIcon(
      tags: tags.where((tag) => !(tag.isCollected ?? false)).toList(),
    );
  }
}
