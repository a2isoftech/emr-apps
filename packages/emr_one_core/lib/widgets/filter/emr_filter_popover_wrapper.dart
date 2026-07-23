import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/keys.dart';
import 'package:flutter/material.dart';

class EmrFilterPopoverWrapper extends StatefulWidget {
  const EmrFilterPopoverWrapper({
    required this.controller,
    super.key,
    this.initialFilterModel,
  });

  final EmrFilterController controller;

  final EmrFilterModel<dynamic>? initialFilterModel;

  @override
  State<EmrFilterPopoverWrapper> createState() =>
      _EmrFilterPopoverWrapperState();
}

class _EmrFilterPopoverWrapperState extends State<EmrFilterPopoverWrapper> {
  EmrFilterModel<dynamic>? filterModel;

  late List<EmrFilterModel<dynamic>> filters;

  @override
  void initState() {
    super.initState();

    filterModel = widget.initialFilterModel;

    filters = widget.controller.newFilters();

    // When adding a filter and there's only one available option, choose it.
    if (filterModel == null && filters.length == 1) {
      filterModel = filters.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // When initialFilterModel is null then we're adding a new one.
        if (widget.initialFilterModel == null)
          Padding(
            padding: EdgeInsets.only(
              bottom: filterModel == null ? 0 : Insets.gutter,
            ),
            child: DropdownButtonFormField<EmrFilterModel<dynamic>?>(
              key: K.addFilterNameDropdown,
              decoration:
                  InputDecoration(labelText: context.l10n.selectAFilter),
              initialValue: filterModel,
              onChanged: (EmrFilterModel<dynamic>? value) =>
                  setState(() => filterModel = value),
              items: [
                if (filterModel == null)
                  const DropdownMenuItem<EmrFilterModel<dynamic>?>(
                    child: Text(''),
                  ),
                ...filters
                    .map<DropdownMenuItem<EmrFilterModel<dynamic>>>((value) {
                  return DropdownMenuItem<EmrFilterModel<dynamic>>(
                    value: value,
                    child: Text(value.name),
                  );
                }),
              ],
            ),
          ),
        if (filterModel != null)
          widget.controller
              .filterContentBuilder(context, filterModel!, widget.controller),
      ],
    );
  }
}
