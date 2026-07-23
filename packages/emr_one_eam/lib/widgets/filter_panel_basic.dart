import 'dart:math';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/models/models.dart';
import 'package:emr_one_eam/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FilterPanelBasic extends StatefulWidget {
  const FilterPanelBasic({
    required this.facet,
    required this.title,
    super.key,
    this.onFilterChecked,
    this.onExpansionChanged,
    this.isFilterChecked,
    this.hasSearch = false,
    this.isExpanded = false,
  });

  final void Function({required String selectedValue, bool? isChecked})?
      onFilterChecked;
  final bool Function(String)? isFilterChecked;
  final Facet facet;
  final String title;
  final bool hasSearch;
  final bool isExpanded;
  final void Function({required String key, required bool isExpanded})?
      onExpansionChanged;

  @override
  State<FilterPanelBasic> createState() => _FilterPanelBasicState();
}

class _FilterPanelBasicState extends State<FilterPanelBasic> {
  late final TextEditingController _searchController;
  bool _isExpanded = false;

  static const int _kMaxFacets = 5;

  @override
  void initState() {
    super.initState();

    _searchController = TextEditingController();

    _searchController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final options = _searchController.text.isEmpty
        ? widget.facet.value.values
        : widget.facet.value.values
            .where(
              (e) => e.range
                  .toLowerCase()
                  .contains(_searchController.text.toLowerCase()),
            )
            .toList();
    final ff = options.sublist(
      0,
      min(
        _isExpanded ? options.length : _kMaxFacets,
        options.length,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: EmrOneConstants.kSmallestHeadingTextStyle,
        ),
        Column(
          children: [
            if (widget.hasSearch) ...[
              const SizedBox(height: Insets.gutter / 2),
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: context.l10n.search,
                  prefixIcon: const Icon(Icons.search),
                  isDense: true,
                  contentPadding: const EdgeInsets.all(2),
                ),
              ),
            ],
            const SizedBox(height: Insets.gutter / 2),
            if (options.length > _kMaxFacets)
              TextButton(
                onPressed: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: Text(
                  '''${context.l10n.show} ${_isExpanded ? context.l10n.less : context.l10n.more}''',
                ),
              ),
            ...ff.map(
              (e) => Row(
                children: [
                  Checkbox(
                    value: widget.isFilterChecked?.call(e.range) ?? false,
                    visualDensity: VisualDensity.compact,
                    onChanged: (value) {
                      widget.onFilterChecked?.call(
                        isChecked: value ?? false,
                        selectedValue: e.range,
                      );
                    },
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    // width: 150,
                    child: Row(
                      children: [
                        // if (e.range == 'NULL_VALUE') ...[
                        //   const Flexible(
                        //     child: Text('NULL'),
                        //   ),
                        // ] else ...[
                        Flexible(
                          child: Tooltip(
                            message: e.range.length > 25
                                ? e.range.toUpperCase()
                                : '',
                            child: Text(
                              e.range.length <= 25
                                  ? e.range.toUpperCase()
                                  : '''
${e.range.substring(0, 15).toUpperCase()}..''',
                            ),
                          ),
                        ),
                      ],
                      // ],
                    ),
                  ),
                  const Spacer(),
                  MiniTag(label: e.count.toString()),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
