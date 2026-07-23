import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class ReorderItemsWidget<T> extends StatefulWidget {
  const ReorderItemsWidget({
    required this.listNotifier,
    required this.itemBuilder,
    required this.onSave,
    super.key,
    this.useDragHandle = true,
  });
  final ValueNotifier<List<T>> listNotifier;
  final Widget Function(BuildContext, T) itemBuilder;
  final void Function(List<T>) onSave;
  final bool useDragHandle;

  @override
  ReorderItemsWidgetState<T> createState() => ReorderItemsWidgetState<T>();
}

class ReorderItemsWidgetState<T> extends State<ReorderItemsWidget<T>> {
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      final adjustedIndex = newIndex > oldIndex ? newIndex - 1 : newIndex;
      final item = widget.listNotifier.value.removeAt(oldIndex);
      widget.listNotifier.value.insert(adjustedIndex, item);
    });
  }

  void _saveChanges() {
    widget.onSave(
      List<T>.from(widget.listNotifier.value),
    ); // Pass updated order to parent
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return ValueListenableBuilder<List<T>>(
      valueListenable: widget.listNotifier,
      builder: (context, value, child) {
        return Column(
          children: [
            SizedBox(
              height: screenHeight - 280,
              child: ReorderableListView(
                buildDefaultDragHandles: false,
                padding: const EdgeInsets.only(
                  bottom: Insets.gutter,
                  left: Insets.gutter,
                  right: Insets.gutter,
                ),
                proxyDecorator:
                    (Widget child, int index, Animation<double> animation) {
                      return Material(color: Colors.transparent, child: child);
                    },
                onReorder: _onReorder,
                children: List.generate(widget.listNotifier.value.length, (
                  index,
                ) {
                  return ReorderableDragStartListener(
                    key: ValueKey(index),
                    index: index,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: Insets.gutter / 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: widget.itemBuilder(
                              context,
                              widget.listNotifier.value[index],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop();
                    },
                    child: Text(context.l10n.cancel),
                  ),
                  const SizedBox(width: Insets.gutter),
                  ElevatedButton(
                    onPressed: _saveChanges,
                    child: Text(context.l10n.save),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
