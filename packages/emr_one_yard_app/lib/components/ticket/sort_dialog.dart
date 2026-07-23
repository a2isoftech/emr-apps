import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/models/search/sort_item.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals.dart';

class SortDialog {
  static Future<void> show(
    BuildContext context,
    GlobalKey key,
    Signal<SortItem> sortOrder,
  ) {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return Dialog(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(
              Insets.gutter,
            ),
            child: SizedBox(
              width: 500,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: Insets.gutter,
                      top: Insets.gutter,
                      left: Insets.gutter / 2,
                    ),
                    child: Text(
                      context.l10n.sortBy,
                    ),
                  ),
                  DropdownButtonFormField<SortItem>(
                    key: key,
                    initialValue: sortOrder.value,
                    onChanged: (item) {
                      if (item == null) {
                        return;
                      }
                      sortOrder.value = item;
                      Navigator.pop(key.currentContext!);
                    },
                    items: [
                      DropdownMenuItem<SortItem>(
                        value: SortItem.createdDesc,
                        child: Text(context.l10n.newestFirst),
                      ),
                      DropdownMenuItem<SortItem>(
                        value: SortItem.createdAsc,
                        child: Text(context.l10n.oldestFirst),
                      ),
                      DropdownMenuItem<SortItem>(
                        value: SortItem.accountNameAsc,
                        child: Text(context.l10n.accountNameAsc),
                      ),
                      DropdownMenuItem<SortItem>(
                        value: SortItem.accountNameDesc,
                        child: Text(context.l10n.accountNameDesc),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
