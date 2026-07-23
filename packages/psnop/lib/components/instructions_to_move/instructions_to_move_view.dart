import 'package:flutter/material.dart';
import 'package:psnop/components/instructions_to_move/instructions_to_move_filters_section.dart';
import 'package:psnop/components/instructions_to_move/instructions_to_move_table.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';

class InstructionsToMoveView extends StatelessWidget {
  const InstructionsToMoveView({
    required this.mainHeaders,
    required this.apiHelper,
    super.key,
  });

  final PsnopApiHelper apiHelper;
  final List<MainHeaderModel> mainHeaders;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InstructionsToMoveFiltersSection(apiHelper: apiHelper),
        InstructionsToMoveTable(
          headers: mainHeaders,
        ),
      ],
    );
  }
}
