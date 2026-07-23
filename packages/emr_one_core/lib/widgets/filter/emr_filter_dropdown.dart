import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

/// A simple dropdown filter popover.
class EmrFilterDropdown<T, TFilterValue> extends StatefulWidget {
  const EmrFilterDropdown(
    Key? key,
    this.filterModel,
    this.controller,
    this.suggestionsCallback, {
    required this.close,
    required this.getTitle,
    required this.getValue,
    this.getSubtitle,
  }) : super(key: key);

  final EmrFilterModel<dynamic> filterModel;

  final EmrFilterController controller;

  final Future<Iterable<T>> Function(
    String pattern,
    EmrFilterController filterController,
  )
  suggestionsCallback;

  final void Function() close;

  final String Function(T) getTitle;

  final String Function(T)? getSubtitle;

  final TFilterValue Function(T) getValue;

  @override
  State<EmrFilterDropdown<T, TFilterValue>> createState() =>
      _EmrFilterDropdownState<T, TFilterValue>();
}

class _EmrFilterDropdownState<T, TFilterValue>
    extends State<EmrFilterDropdown<T, TFilterValue>> {
  late Future<Iterable<T>> _suggestionsFuture;

  @override
  void initState() {
    super.initState();

    _suggestionsFuture = widget.suggestionsCallback('', widget.controller);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _suggestionsFuture,
      builder: (context, asyncSnapshot) {
        if (asyncSnapshot.connectionState != ConnectionState.done) {
          return widget.controller.calculatedDisplayMode ==
                  EmrFilterDisplayMode.popover
              ? const Center(child: CircularProgressIndicator())
              : const Expanded(
                  child: Center(child: CircularProgressIndicator()),
                );
        }

        // Popover layout (usually desktop).
        if (widget.controller.calculatedDisplayMode ==
            EmrFilterDisplayMode.popover) {
          return ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 32,
              // Show 5.5 items to indicate there are more items to scroll.
              maxHeight: 48.0 * 5.5,
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: asyncSnapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                final item = asyncSnapshot.data!.elementAt(index);

                if (item == null) {
                  return const SizedBox.shrink();
                }

                return ListTile(
                  title: Text(widget.getTitle(item)),
                  subtitle: widget.getSubtitle != null
                      ? Text(widget.getSubtitle!(item))
                      : null,
                  onTap: () {
                    widget.controller.addOrUpdateFilter(
                      filter:
                          widget.filterModel as EmrFilterModel<TFilterValue>,
                      text: widget.getTitle(item),
                      value: widget.getValue(item),
                    );

                    widget.close();
                  },
                );
              },
            ),
          );
        }

        // Modal layout (usually mobile).
        return Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: asyncSnapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              final item = asyncSnapshot.data!.elementAt(index);

              if (item == null) {
                return const SizedBox.shrink();
              }

              return ListTile(
                title: Text(widget.getTitle(item)),
                subtitle: widget.getSubtitle != null
                    ? Text(widget.getSubtitle!(item))
                    : null,
                onTap: () {
                  widget.controller.addOrUpdateFilter(
                    filter: widget.filterModel as EmrFilterModel<TFilterValue>,
                    text: widget.getTitle(item),
                    value: widget.getValue(item),
                  );

                  widget.close();
                },
              );
            },
          ),
        );
      },
    );
  }
}
