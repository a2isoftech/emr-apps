import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/keys.dart';
import 'package:flutter/material.dart';

class EmrFilterModalWrapper extends StatefulWidget {
  const EmrFilterModalWrapper({
    required this.controller,
    super.key,
    this.initialFilterModel,
  });
  final EmrFilterController controller;

  final EmrFilterModel<dynamic>? initialFilterModel;

  @override
  State<EmrFilterModalWrapper> createState() => _EmrFilterModalWrapperState();
}

class _EmrFilterModalWrapperState extends State<EmrFilterModalWrapper> {
  late List<EmrFilterModel<dynamic>> filters;

  EmrFilterModel<dynamic>? filterModel;

  @override
  void initState() {
    super.initState();

    filterModel = widget.initialFilterModel;

    filters = widget.controller.newFilters();

    // When there's only one available option, choose it.
    if (filters.length == 1) {
      filterModel = filters.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.initialFilterModel?.name ?? context.l10n.addAFilter),
      ),
      body: Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Insets.gutter,
            horizontal: Insets.gutter / 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // When initialFilterModel is null then we're adding a new one.
              if (widget.initialFilterModel == null)
                Padding(
                  padding: const EdgeInsets.only(bottom: Insets.gutter),
                  child: DropdownButtonFormField<EmrFilterModel<dynamic>?>(
                    key: K.addFilterNameDropdown,
                    decoration: InputDecoration(
                      labelText: context.l10n.selectAFilter,
                    ),
                    initialValue: filterModel,
                    onChanged: (EmrFilterModel<dynamic>? value) =>
                        setState(() => filterModel = value),
                    items: [
                      if (filterModel == null)
                        const DropdownMenuItem<EmrFilterModel<dynamic>?>(
                          child: Text(''),
                        ),
                      ...filters.map<DropdownMenuItem<EmrFilterModel<dynamic>>>(
                          (value) {
                        return DropdownMenuItem<EmrFilterModel<dynamic>>(
                          value: value,
                          child: Text(value.name),
                        );
                      }),
                    ],
                  ),
                ),
              if (filterModel != null)
                widget.controller.filterContentBuilder(
                  context,
                  filterModel!,
                  widget.controller,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
