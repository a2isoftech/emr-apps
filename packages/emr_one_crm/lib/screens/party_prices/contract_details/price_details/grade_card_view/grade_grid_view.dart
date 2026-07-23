import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/grade_card_view/gpl_grade_expansion_tile.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/grade_card_view/grade_card.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_one_crm/temp/grade_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GradeGridView extends StatelessWidget {
  const GradeGridView({
    required this.contract,
    super.key,
  });
  final Contract contract;

  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<GradesListProvider>(context, listen: false);
    final isGpl = contract.ref.contains('GPL');
    return Padding(
      padding: const EdgeInsets.only(top: Insets.gutter / 2),
      child: SizedBox(
        child: Wrap(
          spacing: Insets.gutter / 2,
          runSpacing: Insets.gutter / 2,
          children: isGpl
              ? notifier.gradeLines.value
                  .map(
                    (line) => GplGradeExpansionTile(
                      contract: contract,
                      contractLineGrade: line,
                    ),
                  )
                  .toList()
              : notifier.grades.value
                  .map(
                    (line) => GradeCard(
                      contract: contract,
                      contractLine: line,
                    ),
                  )
                  .toList(),
        ),
      ),
    );
  }
}
