import 'package:emr_core_api/models/tag.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/contract_line_grade.dart';
import 'package:emr_one_crm/models/grade_line.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/grade_card_view/grade_details_info.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/read_only_tag_icon.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:flutter/material.dart';

class GradeCard extends StatefulWidget {
  const GradeCard({
    required this.contract,
    this.contractLine,
    this.contractLineGrade,
    super.key,
  }) : assert(contractLine != null || contractLineGrade != null);

  final Contract contract;
  final GradeLine? contractLine;
  final ContractLineGrade? contractLineGrade;

  @override
  State<GradeCard> createState() => _GradeCardState();
}

class _GradeCardState extends State<GradeCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final width = constraints.maxWidth;
          final gradeContainerWidth = (width / 2) - Insets.gutter / 4;
          const horizontalPadding = Insets.gutter;
          final headingWidth =
              (gradeContainerWidth / 2) - horizontalPadding / 2;
          final contractLine = widget.contractLine?.contractLines.first;
          final showDeliveredPrices = widget.contract.isDelivered;
          final showCollectedPrices = widget.contract.isCollected;
          final isGpl = widget.contract.ref.contains('GPL');
          return Container(
            width: gradeContainerWidth,
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.outline),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: EmrExpansionTile(
              title: isGpl
                  ? _buildTitle(
                      widget.contractLineGrade?.grade ?? '',
                      subtitle: widget.contractLineGrade?.yard,
                      showTags: isGpl,
                    )
                  : _buildTitle(
                      widget.contractLine?.grade ?? '',
                      subtitle: widget.contractLine?.brokerReference,
                    ),
              collapsedIconColor: Theme.of(context).colorScheme.secondary,
              maintainState: true,
              collapsedBackgroundColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              tilePadding: EdgeInsets.zero,
              onExpansionChanged: (value) => {
                setState(() {
                  _expanded = value;
                }),
              },
              trailing: _buildExpandIcon(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradeDetailsInfo(
                    heading: context.l10n.materialDescription,
                    info: isGpl
                        ? widget.contractLineGrade?.contractLine.gradeDetail
                                ?.description ??
                            'NA'
                        : contractLine?.materialDescription ?? 'NA',
                    headingWidth: headingWidth,
                  ),
                  GradeDetailsInfo(
                    heading: context.l10n.location,
                    info: isGpl
                        ? widget.contractLineGrade!.yard
                        : _getLocationName(contractLine, context),
                    headingWidth: headingWidth,
                  ),
                  if (!isGpl)
                    GradeDetailsInfo(
                      heading: context.l10n.depot,
                      info: _getDepotName(contractLine, context),
                      headingWidth: headingWidth,
                    ),
                  if (showCollectedPrices && !isGpl)
                    GradeDetailsInfo(
                      heading: context.l10n.colPrice,
                      info: widget.contractLine?.formattedColPrice ?? '',
                      headingWidth: headingWidth,
                    ),
                  if (showDeliveredPrices && !isGpl)
                    GradeDetailsInfo(
                      heading: context.l10n.delPrice,
                      info: widget.contractLine?.formattedDelPrice ?? '',
                      headingWidth: headingWidth,
                    ),
                  if (widget.contract.type == ContractTypeEnum.fixed)
                    ..._getSectionForFixed(
                      widget.contract,
                      contractLine,
                      headingWidth,
                    ),
                  if (widget.contract.type == ContractTypeEnum.spot)
                    ..._getSectionForSpot(
                      widget.contract,
                      contractLine,
                      headingWidth,
                    ),
                  if (!isGpl)
                    GradeDetailsInfo(
                      heading: context.l10n.haulageCharge,
                      info: '${contractLine?.haulageAdjustment}',
                      headingWidth: headingWidth,
                    ),
                  if (isGpl)
                    GradeDetailsInfo(
                      heading: context.l10n.price,
                      info: widget.contractLineGrade!.formattedCurrentPrice,
                      headingWidth: headingWidth,
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTitle(String title, {String? subtitle, bool showTags = false}) {
    final text =
        subtitle != null && subtitle != '' ? '$title - $subtitle' : title;

    return Container(
      padding: const EdgeInsets.only(left: Insets.gutter / 2),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          if (showTags) ...[
            const SizedBox(width: Insets.gutter / 2),
            SizedBox(
              width: Insets.gutter * 2,
              height: Insets.gutter * 2,
              child: _buildTagIcon(widget.contractLineGrade?.tags),
            ),
          ],
        ],
      ),
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

  Widget _buildExpandIcon() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: !_expanded
            ? Theme.of(context).colorScheme.secondary
            : Colors.transparent,
      ),
      padding: const EdgeInsets.all(Insets.gutter),
      child: Icon(
        Icons.open_in_full,
        color: _expanded
            ? Theme.of(context).colorScheme.inverseSurface
            : Theme.of(context).colorScheme.onSecondary,
      ),
    );
  }

  List<GradeDetailsInfo> _getSectionForFixed(
    Contract contract,
    ContractLine? contractLine,
    double headingWidth,
  ) {
    return [
      GradeDetailsInfo(
        heading: context.l10n.targetWeight,
        info: '${_getTargetWeight(contract, contractLine)}',
        headingWidth: headingWidth,
      ),
      GradeDetailsInfo(
        heading: context.l10n.actualWeight,
        info: '${_getActualWeight(contract, contractLine)}',
        headingWidth: headingWidth,
      ),
    ];
  }

  List<GradeDetailsInfo> _getSectionForSpot(
    Contract contract,
    ContractLine? contractLine,
    double headingWidth,
  ) {
    return [
      GradeDetailsInfo(
        heading: context.l10n.targetLoad,
        info: '${contract.targetLoads}',
        headingWidth: headingWidth,
      ),
    ];
  }

  double _getTargetWeight(Contract contract, ContractLine? line) {
    return line?.targetTonnage.value ?? 0.0;
  }

  double _getActualWeight(Contract contract, ContractLine? line) {
    return (line?.deliveredTonnage! ?? 0) * (line?.deliveredLoads ?? 0);
  }

  String _getLocationName(ContractLine? line, BuildContext context) {
    if (line?.lineLocations?.length == 1) {
      return line?.lineLocations?.firstOrNull?.locationCode ?? '';
    } else if ((line?.lineLocations?.length ?? 0) > 1) {
      return context.l10n.psnopMulti;
    } else {
      return 'ANY';
    }
  }

  String _getDepotName(ContractLine? line, BuildContext context) {
    final uniqueDepots = line?.depotPremiums
        .map((dp) => dp.depot.code)
        .where((code) => code.isNotEmpty)
        .toSet();

    if (uniqueDepots?.isEmpty ?? true) {
      return 'ANY';
    } else if (uniqueDepots?.length == 1) {
      return uniqueDepots!.first;
    } else {
      return context.l10n.psnopMulti;
    }
  }
}
