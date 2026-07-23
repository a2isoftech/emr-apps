import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_yard_app/components/ticket/sort_dialog.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/models/search/sort_item.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals.dart';

class SearchSortBar extends StatelessWidget {
  SearchSortBar({
    required this.searchSelected,
    required this.sortOrder,
    super.key,
  });

  final GlobalKey _sortDialogKey = GlobalKey();
  final Signal<bool> searchSelected;
  final Signal<SortItem> sortOrder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: LayoutConstants.appSearchBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () =>
                SortDialog.show(context, _sortDialogKey, sortOrder),
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          Padding(
            padding: const EdgeInsets.only(right: Insets.gutter / 2),
            child: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => searchSelected.value = !searchSelected.value,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
