import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_gradesinvalid.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/grades_footer.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/grades_grid_list.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/grades_header.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWGradeSelectGrid extends StatefulWidget {
  const CWGradeSelectGrid({
    required this.formKey,
    required this.controller,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final ContractController controller;

  @override
  State<CWGradeSelectGrid> createState() => _CWGradeSelectGridState();
}

class _CWGradeSelectGridState extends State<CWGradeSelectGrid>
    with AutomaticKeepAliveClientMixin<CWGradeSelectGrid> {
  String searchText = '';
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final isDark = Theme.of(context).brightness == Brightness.dark;
    final unselectWidgetIcon = Icon(
      Icons.radio_button_unchecked,
      color: isDark
          ? Theme.of(context).colorScheme.onSurface
          : Theme.of(context).colorScheme.secondary,
    );
    final selectWidgetIcon = Icon(
      Icons.radio_button_checked,
      color: isDark
          ? Theme.of(context).colorScheme.onSurface
          : Theme.of(context).colorScheme.secondary,
    );
    final selectAll = widget.controller.model!.gplGrades.length ==
        widget.controller.model!.selectedGrades.length;
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: <Widget>[
          if (widget.controller.model!.gplGrades.isNotEmpty)
            GradesHeader(
              widget: widget,
              selectAll: selectAll,
              selectWidgetIcon: selectWidgetIcon,
              unselectWidgetIcon: unselectWidgetIcon,
              onSearchChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
            ),
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
            child: GradesGridList(
              widget: widget,
              isDark: isDark,
              searchText: searchText,
            ),
          ),
          if (widget.controller.model!.selectedGrades.isEmpty)
            CWGradesInvalid(
              controller: widget.controller,
            ),
          GradesFooter(controller: widget.controller, formKey: widget.formKey),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
