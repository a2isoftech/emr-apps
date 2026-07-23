import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/grade_card_view/grade_details_info.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/read_only_tag_icon.dart';
import 'package:emr_one_crm/shared/tag_utils.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GplGradeExpansionTile extends StatefulWidget {
  const GplGradeExpansionTile({
    required this.contract,
    required this.contractLineGrade,
    super.key,
  });

  final Contract contract;
  final ContractLineGrade contractLineGrade;

  @override
  State<GplGradeExpansionTile> createState() => _GplGradeExpansionTileState();
}

class _GplGradeExpansionTileState extends State<GplGradeExpansionTile> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final headingWidth = screenWidth / 2.5;
    final formatter = DateFormat('dd/MM/yyyy');
    final tags = widget.contractLineGrade.tags;
    final isMobile = screenWidth < 600;
    final hasCollected = tagsHaveCollected(tags);
    final deliveryType = deliveryTypeFromTags(tags, context);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        onExpansionChanged: (value) {
          setState(() => _expanded = value);
        },
        trailing: Icon(
          _expanded ? Icons.expand_less : Icons.expand_more,
        ),
        title: Row(
          children: [
            Flexible(
              child: Text(
                '${widget.contractLineGrade.grade} - '
                ' ${widget.contractLineGrade.yard}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            if (tags != null && tags.isNotEmpty) ...[
              const SizedBox(width: Insets.gutter / 2),
              ReadOnlyTagIcon(
                tags: tags.where((tag) => !(tag.isCollected ?? false)).toList(),
              ),
            ],
            const SizedBox(width: Insets.gutter / 2),
            Text(
              '- $deliveryType',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: Column(
              children: [
                GradeDetailsInfo(
                  heading: context.l10n.materialDescription,
                  info: widget.contractLineGrade.contractLine.gradeDetail
                          ?.description ??
                      'NA',
                  headingWidth: headingWidth,
                ),
                GradeDetailsInfo(
                  heading: context.l10n.location,
                  info: widget.contractLineGrade.yard,
                  headingWidth: headingWidth,
                ),
                GradeDetailsInfo(
                  heading: context.l10n.price,
                  info: widget.contractLineGrade.formattedCurrentPrice,
                  headingWidth: headingWidth,
                ),
                if (hasCollected) ...[
                  GradeDetailsInfo(
                    heading: context.l10n.collectedChargeDetails,
                    info: '',
                    headingWidth: headingWidth,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: Insets.gutter / 2,
                        runSpacing: Insets.gutter / 2,
                        children: tags!
                            .where((tag) => tag.isCollected ?? true)
                            .map((collectedTag) {
                          final locationsCodes =
                              (collectedTag.accountLocationKeys ?? [])
                                  .join(', ');
                          final showToCustomer =
                              collectedTag.showToCustomer ?? false
                                  ? context.l10n.yes
                                  : context.l10n.no;
                          final fullyCharged =
                              collectedTag.fullyCharged ?? false
                                  ? context.l10n.yes
                                  : context.l10n.no;
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Insets.gutter,
                              vertical: Insets.gutter / 2,
                            ),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).dividerColor,
                                width: Insets.gutter / 8,
                              ),
                              borderRadius:
                                  BorderRadius.circular(Insets.gutter / 2),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        collectedTag.category,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const SizedBox(width: Insets.gutter / 2),
                                    Text(
                                      collectedTag.rate!.mtValue
                                          .toStringAsFixed(2),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: Insets.gutter / 2,
                                  ),
                                  child: Divider(
                                    thickness: 0.6,
                                    height: 1,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${context.l10n.fullyCharged}: '
                                            '$fullyCharged',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                          Text(
                                            '${context.l10n.showToCustomer}: '
                                            '$showToCustomer',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '${context.l10n.location}: '
                                      '$locationsCodes',
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: Insets.gutter),
                    ],
                  ),
                ],
                if (tags != null && tags.isNotEmpty && isMobile) ...[
                  GradeDetailsInfo(
                    heading: context.l10n.tags,
                    info: '',
                    headingWidth: headingWidth,
                  ),
                  const SizedBox(height: Insets.gutter),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: Insets.gutter / 2,
                        runSpacing: Insets.gutter / 2,
                        children: tags.map((tag) {
                          final rateText = tag.rate != null
                              ? (tag.rate!.value > 0 ? '+' : '') +
                                  tag.rate.toString()
                              : '';
                          final dateText =
                              '${formatter.format(tag.effectiveFrom)} - '
                              ' ${formatter.format(tag.effectiveTo)}';

                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Insets.gutter,
                              vertical: Insets.gutter / 2,
                            ),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).dividerColor,
                                width: Insets.gutter / 8,
                              ),
                              borderRadius:
                                  BorderRadius.circular(Insets.gutter / 2),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        tag.reason,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const SizedBox(width: Insets.gutter / 2),
                                    Text(
                                      rateText,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: Insets.gutter / 2,
                                  ),
                                  child: Divider(
                                    thickness: 0.6,
                                    height: 1,
                                  ),
                                ),
                                Text(
                                  dateText,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: Insets.gutter,
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
