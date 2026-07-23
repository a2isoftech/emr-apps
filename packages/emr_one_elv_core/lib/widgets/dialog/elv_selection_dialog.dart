import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_elv_core/extensions/small_screen_check.dart';
import 'package:emr_one_elv_core/widgets/dialog/dialog.dart';
import 'package:flutter/material.dart';

Future<void> showElvSelectionDialog<T>({
  required BuildContext context,
  required List<T> items,
  required String Function(T) displayString,
  required void Function(T value) onTap,
  required TextEditingController searchController,
  void Function()? onTapAny,
  String? title,
  String? label,
}) {
  final dialogHeight = SmallScreenCheck().isSmallScreen(context)
      ? MediaQuery.of(context).size.height * 0.4
      : 600.0;
  const dialogWidth = 600.0;
  final listViewHeight = dialogHeight - 100;

  return ElvDialog.action(
    context,
    titleText: title ?? '',
    content: SizedBox(
      height: dialogHeight,
      child: StatefulBuilder(
        builder: (context, setState) {
          final filteredItems = items
              .where(
                (element) => displayString(element)
                    .toLowerCase()
                    .contains(searchController.text.toLowerCase()),
              )
              .toList();
          final children = _buildGenericChildren<T>(
            filteredItems,
            context,
            displayString,
            onTapAny,
            onTap,
          );
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: Insets.gutter,
                  right: Insets.gutter / 2,
                  left: Insets.gutter / 2,
                  bottom: Insets.gutter / 2,
                ),
                child: TextField(
                  autofocus: true,
                  controller: searchController,
                  autocorrect: false,
                  decoration: InputDecoration(
                    label: Text(
                      label ?? '',
                    ),
                    isDense: false,
                  ),
                  onChanged: (s) => setState(() {}),
                ),
              ),
              SizedBox(
                height: listViewHeight,
                width: dialogWidth,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: children.length,
                  itemBuilder: (context, index) => children[index],
                ),
              ),
            ],
          );
        },
      ),
    ),
  );
}

List<Widget> _buildGenericChildren<T>(
  List<T> items,
  BuildContext context,
  String Function(T) displayString,
  void Function()? onTapAny,
  void Function(T value) onTap,
) {
  final children = <Widget>[];

  if (onTapAny != null) {
    children.add(
      Padding(
        padding: const EdgeInsets.all(Insets.gutter / 2),
        child: ListTile(
          onTap: () => onTapAny(),
          leading: Text(
            context.l10n.any.toUpperCase(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }

  children.addAll(
    items.map(
      (e) => Padding(
        padding: const EdgeInsets.all(Insets.gutter / 2),
        child: SizedBox(
          width: 400,
          child: ListTile(
            onTap: () => onTap(e),
            title: Text(
              displayString(e),
              style: Theme.of(context).textTheme.bodyLarge,
              overflow: TextOverflow.visible,
              softWrap: true,
            ),
          ),
        ),
      ),
    ),
  );

  return children;
}
