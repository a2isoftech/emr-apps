import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_core/widgets/sort/emr_up_down_sort.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/grade_card_view/grade_grid_view.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/grade_list_view/grade_list_view.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_one_crm/temp/grade_list_provider.dart';
import 'package:emr_one_crm/widgets/switch_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PriceGradesView extends StatefulWidget {
  const PriceGradesView({
    required this.contract,
    required this.showDeliveredPrices,
    required this.showCollectedPrices,
    super.key,
  });
  final Contract contract;
  final bool showDeliveredPrices;
  final bool showCollectedPrices;

  @override
  State<PriceGradesView> createState() => _GradeCardViewState();
}

class _GradeCardViewState extends State<PriceGradesView> {
  late List<ContractLine> _contractLines;
  bool _isGridView = true;

  @override
  void initState() {
    super.initState();
    _contractLines = widget.contract.lines;
    _contractLines.sort((a, b) {
      final c = a.grade.compareTo(b.grade);
      if (c != 0) return c;
      return a.gradeDetail?.description
              .compareTo(b.gradeDetail?.description ?? '') ??
          0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.grades,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: Insets.gutter / 2,
                      right: Insets.gutter,
                    ),
                    child: TextField(
                      autocorrect: false,
                      decoration: FormStyles.textFieldDecoration(context)
                          .copyWith(labelText: context.l10n.search),
                      onChanged: filterContractLines,
                    ),
                  ),
                ),
                EmrUpDownSort(
                  onSortChange: sortContractLines,
                ),
                if (widget.contract.ref.contains('GPL') &&
                    MediaQuery.sizeOf(context).width > 600)
                  SwitchListViewWidget(
                    onViewChange: onChangeViewType,
                  ),
              ],
            ),
          ),
          if (_isGridView)
            GradeGridView(
              contract: widget.contract,
            )
          else
            GradeListView(
              showCollectedPrices: widget.showCollectedPrices,
              showDeliveredPrices: widget.showDeliveredPrices,
              isGpl: widget.contract.ref.contains('GPL'),
            ),
        ],
      ),
    );
  }

  void filterContractLines(String query) {
    setState(() {
      _contractLines = widget.contract.lines
          .where(
            (line) =>
                line.grade.toLowerCase().contains(query.toLowerCase()) ||
                (line.gradeDetail != null &&
                    line.gradeDetail!.description
                        .toLowerCase()
                        .contains(query.toLowerCase())),
          )
          .toList();
      Provider.of<GradesListProvider>(context, listen: false).loadGrades(
        _contractLines,
        resetPaging: true,
        isGpl: widget.contract.ref.contains('GPL'),
      );
    });
  }

  void sortContractLines(UpDownSortMode sortMode) {
    setState(() {
      _contractLines = _contractLines.reversed.toList();
      Provider.of<GradesListProvider>(context, listen: false).loadGrades(
        _contractLines,
        isGpl: widget.contract.ref.contains('GPL'),
      );
    });
  }

  void onChangeViewType() {
    setState(() {
      _isGridView = !_isGridView;
    });
  }
}
