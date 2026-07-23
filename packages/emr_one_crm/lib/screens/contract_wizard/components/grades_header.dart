import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_gradeselectgrid.dart';
import 'package:flutter/material.dart';

class GradesHeader extends StatefulWidget {
  const GradesHeader({
    required this.widget,
    required this.selectAll,
    required this.selectWidgetIcon,
    required this.unselectWidgetIcon,
    required this.onSearchChanged,
    super.key,
  });

  final CWGradeSelectGrid widget;
  final bool selectAll;
  final Icon selectWidgetIcon;
  final Icon unselectWidgetIcon;
  final ValueChanged<String> onSearchChanged;

  @override
  State<GradesHeader> createState() => _GradesHeaderState();
}

class _GradesHeaderState extends State<GradesHeader> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: TextField(
                style: const TextStyle(fontSize: Insets.gutter),
                controller: _searchController,
                onChanged: widget.onSearchChanged,
                decoration: InputDecoration(
                  hintText: context.l10n.search,
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: Insets.gutter / 8,
                    horizontal: Insets.gutter / 4,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Insets.gutter / 2),
                  ),
                ),
              ),
            ),
            if (widget.selectAll)
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    widget.widget.controller.setAllGradesDeselected();
                  });
                },
                icon: widget.selectWidgetIcon,
                label: Text(context.l10n.selectAll),
                style: ButtonStyle(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                ),
              )
            else
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    widget.widget.controller.setAllGradesSelected();
                  });
                },
                icon: widget.unselectWidgetIcon,
                label: Text(context.l10n.selectAll),
                style: ButtonStyle(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                ),
              ),
          ],
        ),
        const SizedBox(
          height: Insets.gutter,
        ),
        Text(
          '${context.l10n.grades}: ',
          style: EmrOneConstants.kSmallestHeadingTextStyle,
        ),
      ],
    );
  }
}
